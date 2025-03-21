#include "layer.h"
#include "activations.h"
#include "error.h"
#include "accelerator.h"
#include "utils.h"
#include <iostream>
#include <iomanip>  // for std::setw (nice formatting)
#include <vector>
#include <cmath> 
#include <ap_fixed.h>

typedef ap_fixed<16,7> fixed_16;
using namespace std;

void accelerator(
    const std::array<std::array<std::array<fixed_16, 1>, INPUT_SIZE>, DATA_SIZE>& input,
    const std::array<std::array<fixed_16, OUTPUT_SIZE>, DATA_SIZE>& y_true,
    std::array<std::array<fixed_16, INPUT_SIZE>, L0_SIZE>& weights_l0,
    std::array<std::array<fixed_16, L0_SIZE>, L1_SIZE>& weights_l1,
    std::array<std::array<fixed_16, L1_SIZE>, L2_SIZE>& weights_l2,
    std::array<std::array<fixed_16, L2_SIZE>, OUTPUT_SIZE>& weights_l3,
    std::array<fixed_16, L0_SIZE>& biases_l0,
    std::array<fixed_16, L1_SIZE>& biases_l1,
    std::array<fixed_16, L2_SIZE>& biases_l2,
    std::array<fixed_16, OUTPUT_SIZE>& biases_l3
) {
    int first_full_acc_epoch = NUM_ITERATIONS + 301;
    double learning_rate = LR;

    std::cout << "+---------------------------------------------------------------+" << std::endl;

    // std::cout << "Initial | weights_l0[0][0]: " << weights_l0[0][0] 
    //             << " | weights_l1[0][0]: " << weights_l1[0][0] 
    //             << " | weights_l2[0][0]: " << weights_l2[0][0] 
    //             << " | weights_l3[0][0]: " << weights_l3[0][0] << std::endl;
            

    for (int epoch = 0; epoch < NUM_ITERATIONS; ++epoch) {
        int correct = 0;
        for (int iteration = 0; iteration < input.size(); ++iteration) {
            // printf("======================\n");
            // printf("iteration %d \n", iteration);
            auto input_ref = input[iteration];
            auto result_l0 = forwardPropagation<INPUT_SIZE, L0_SIZE>(input_ref, weights_l0, biases_l0, ACTIVATION_HIDDEN);
            // printf("Finished first forward prop\n");
            auto result_l1 = forwardPropagation<L0_SIZE, L1_SIZE>(result_l0, weights_l1, biases_l1, ACTIVATION_HIDDEN);
            // printf("Finished second forward prop\n");
            auto result_l2 = forwardPropagation<L1_SIZE, L2_SIZE>(result_l1, weights_l2, biases_l2, ACTIVATION_HIDDEN);
            // printf("Finished third forward prop\n");
            auto result_l3 = forwardPropagation<L2_SIZE, OUTPUT_SIZE>(result_l2, weights_l3, biases_l3, ACTIVATION_OUTPUT);
            // printf("Forward prop res: \n");

            // select the max value in the last layer output
            int predicted_digit = std::distance(result_l3.begin(), 
                std::max_element(result_l3.begin(), result_l3.end(),
                [](const std::array<double, 1>& a, const std::array<double, 1>& b) {
                    return a[0] < b[0];  // Compare based on the first element
                }));


            // select which in the one-hot vector is the correct label
            int actual_digit = std::distance(y_true[iteration].begin(), std::max_element(y_true[iteration].begin(), y_true[iteration].end()));

            if (predicted_digit == actual_digit) {
                correct += 1;
            }

            std::array<std::array<double, 1>, OUTPUT_SIZE> final_error{};
            for (size_t i = 0; i < result_l3.size(); ++i) {
                for (size_t j = 0; j < result_l3[i].size(); ++j) {
                    final_error[i][j] = result_l3[i][j] - y_true[iteration][i]; // Corrected indexing
                }
            }
            // std::array<std::array<double, 1>, OUT_SIZE> final_error;
            // for (size_t i = 0; i < result_l3.size(); ++i) {
            //     final_error[i][0] = result_l3[i][0] - y_true[iteration][i]; // Corrected indexing
            // }

            // printf("Dimensions of weights_l3: [%lu x %lu]\n", weights_l3.size(), weights_l3[0].size());
            
            auto d_l2 = backProp<L1_SIZE, L2_SIZE, OUTPUT_SIZE>(weights_l3, final_error, result_l1, weights_l2, biases_l2, ACTIVATION_HIDDEN);
            // printf("Finished first backprop\n");
            auto d_l1 = backProp<L0_SIZE, L1_SIZE, L2_SIZE>(weights_l2, d_l2, result_l0, weights_l1, biases_l1, ACTIVATION_HIDDEN);
            // printf("Finished second backprop\n");
            auto d_l0 = backProp<INPUT_SIZE, L0_SIZE, L1_SIZE>(weights_l1, d_l1, input_ref, weights_l0, biases_l0, ACTIVATION_HIDDEN);
            // printf("Finished all backprop\n");
            
            // std::cout << "Gradient d_l3[0][0]: " << final_error[0][0] << std::endl;
            // std::cout << "Gradient d_l2[0][0]: " << d_l2[0][0] << std::endl;
            // std::cout << "Gradient d_l1[0][0]: " << d_l1[0][0] << std::endl;
            // std::cout << "Gradient d_l0[0][0]: " << d_l0[0][0] << std::endl;
            // double max_gradient = 0;
            // for (auto& row : final_error) {
            //     for (double val : row) {
            //         max_gradient = std::max(max_gradient, std::abs(val));
            //     }
            // }
            // std::cout << "Max Gradient d_l3: " << max_gradient << std::endl;
            
            updateWeightBias<L2_SIZE, OUTPUT_SIZE>(weights_l3, biases_l3, result_l2, final_error, learning_rate);
            updateWeightBias<L1_SIZE, L2_SIZE>(weights_l2, biases_l2, result_l1, d_l2, learning_rate);
            updateWeightBias<L0_SIZE, L1_SIZE>(weights_l1, biases_l1, result_l0, d_l1, learning_rate);
            updateWeightBias<INPUT_SIZE, L0_SIZE>(weights_l0, biases_l0, input_ref, d_l0, learning_rate);
            
        }
        // std::cout << "Epoch " << epoch 
                        // << " | weights_l0[0][0]: " << weights_l0[0][0]
                        // << " | weights_l1[0][0]: " << weights_l1[0][0]
                        // << " | weights_l2[0][0]: " << weights_l2[0][0]
                        // << " | weights_l3[0][0]: " << weights_l3[0][0]
                        // << std::endl;
        std::cout << "Epoch " << epoch << " accuracy: " << (double)correct / input.size() << std::endl;
        if (correct / input.size() == 1.0) {
            first_full_acc_epoch = std::min(first_full_acc_epoch, epoch);
        }
    }
    std::cout << "First full accuracy occurs in epoch " << first_full_acc_epoch << std::endl;
}
