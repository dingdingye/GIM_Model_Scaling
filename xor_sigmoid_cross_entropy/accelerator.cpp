#include "gim_model.h"
#include <iostream>
#include <fstream>

// now, we actually run the full model
Inference accelerator(fixed_16 w1[ARRAY_SIZE][ARRAY_SIZE], fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE],
				fixed_16  bias_1[ARRAY_SIZE], fixed_16 bias_2[ARRAY_SIZE],
                fixed_16 training) {

using namespace std;

    // array for the final output
    Inference output_array;

    // CHANGE INITIAL VECTOR/MATRIX SIZES HERE
    // initializing the data for the XOR problem
    fixed_16 x1[4] = {0, 0, 1, 1};
    fixed_16 x2[4] = {0, 1, 0, 1};
    fixed_16 y[4] = {0, 1, 1, 0};
    // setting up initial values for signals between layers
    fixed_16 output_kmin1[2] = {0, 0};

    // initializing internal arrays with zeros
    fixed_16 delta_2[ARRAY_SIZE] = {0, 0};
    fixed_16 output_back1[ARRAY_SIZE] = {0, 0};
    fixed_16 delta_1[ARRAY_SIZE] = {0, 0};
    fixed_16 weight_changes_2[ARRAY_SIZE][ARRAY_SIZE] = {{0, 0}, {0, 0}};
    fixed_16 bias_2_update[ARRAY_SIZE] = {0, 0};

    fixed_16 output_back2[ARRAY_SIZE] = {0, 0};
    fixed_16 delta_0[ARRAY_SIZE] = {0, 0};
    fixed_16 weight_changes_1[ARRAY_SIZE][ARRAY_SIZE] = {{0, 0}, {0, 0}};
    fixed_16 bias_1_update[ARRAY_SIZE] = {0, 0};

    fixed_16 output_0[ARRAY_SIZE] = {0, 0};
    fixed_16 output_1[ARRAY_SIZE] = {0, 0};
    fixed_16 output_2[ARRAY_SIZE] = {0, 0};
    fixed_16 true_val[ARRAY_SIZE] = {0, 0};

    // dummy arrays used to capture unused outputs
    fixed_16 dummy1[ARRAY_SIZE];
    fixed_16 dummy2[ARRAY_SIZE][ARRAY_SIZE];
    fixed_16 dummy3[ARRAY_SIZE];

    // CHANGE TO MATCH NUMBER OF LAYERS/SIZE OF MATRICES
    // make local versions of the weights/biases
    fixed_16 w1_local[ARRAY_SIZE][ARRAY_SIZE] = {{0, 0}, {0, 0}};
    fixed_16 w2_local[ARRAY_SIZE][ARRAY_SIZE] = {{0, 0}, {0, 0}};
    fixed_16 bias_1_local[ARRAY_SIZE] = {0, 0};
    fixed_16 bias_2_local[ARRAY_SIZE] = {0, 0};
    for (int n = 0; n<ARRAY_SIZE; n++) {
        bias_1_local[n] = bias_1[n];
        bias_2_local[n] = bias_2[n];
        for (int m = 0;m<ARRAY_SIZE; m++) {
            w1_local[n][m] = w1[n][m];
            w2_local[n][m] = w2[n][m];
        }
    }

    // number of iterations defined in the header file

    // store actual and predicted difference in vector, set other params
    char model = 'r'; // s = sigmoid, r = relu, l = leaky relu NOTE: SIGMOID CANNOT BE USED ON HARDWARE
    char model_last = 'r';
    fixed_16 alpha = 0.1; // for leaky relu, CHANGE IF LAD FOUND BETTER LEARNING RATE
    fixed_16 lr = 0.05; // learning rate

    // iterate through the alloted epochs
    int i;
    for (i = 0; i < NUM_ITERATIONS; i++) { // MATCH THE MATRIX SIZES THROUGHOUT

        // iterate through all the data points
        int j;
        for (j = 0; j < 4; j++) {
            #pragma HLS PIPELINE
            // setup the initial data input
            output_0[0] = x1[j];
            output_0[1] = x2[j];

            // initialize the error backpropagation cout
            delta_1[0] = 0;
            delta_1[1] = 0; 
            delta_2[0] = 0; 
            delta_2[1] = 0;

            // run the forward propagation
            // start with layer 1
            Array array_out1 = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, training);
            output_1[0] = array_out1.output_k[0];
            output_1[1] = array_out1.output_k[1];

            // then layer two
            Array array_out2 = model_array(w2_local, bias_2_local, output_1, delta_2, lr, model_last, alpha, training);
            output_2[0] = array_out2.output_k[0];
            output_2[1] = array_out2.output_k[1];

            // ADD MORE LAYERS HERE

            // Note:this implies that the output is onehot so will try to caclulate the error using categorical cross entropy
            // make inferences for the return array if training has completed, INCREASE POSSIBLE OUTPUTS AND LOOK INTO THRESHOLDS
            // if (output_2[0] > 0.6) {
            //     output_array.inference[j] = 1;
            // } else if (output_2[0] <= 0.4) {
            //     output_array.inference[j] = 0;
            // }

            if (output_2[0] > output_2[1]) {
                output_array.inference[j] = 1;
            } else {
                output_array.inference[j] = 0;
            }
            // if (output_2[0] > output_2[1])
            // lastly calculate the final error with the derivative of mse after the last output, LOOK INTO SPARSE CATEGORIAL CROSS-ENTROPY CALCULATIONS
            if (y[j] == 0) {
                true_val[0] = 0;
                true_val[1] = 1;    
            } else {
                true_val[0] = 1;
                true_val[1] = 0; 
            }
            if (model_last == 's') {
                delta_2[0] = -2*(true_val[0] - output_2[0]) * output_2[0] * (1 - output_2[0]);
                // delta_2[1] = -(true_val[1] - output_2[1]) * output_2[1] * (1 - output_2[1]);
            }
            else if (model_last == 'r') {
                if (output_2[0] > 0){
                    delta_2[0] = -2* (true_val[0] - output_2[0]);
                    // delta_2[1] = -(true_val[1] - output_2[1]);
                } else {
                    delta_2[0] = 0;
                    // delta_2[1] = 0;
                }
            }
            else if (model_last == 'l') {
                if (output_2[0] > 0) {
                    delta_2[0] = -(true_val[0] - output_2[0]);
                    delta_2[1] = -(true_val[1] - output_2[0]);
                } else {
                    delta_2[0] = -(true_val[0] - output_2[0]) * alpha;
                    delta_2[1] = -(true_val[1] - output_2[1]) * alpha;
                }
            }
            else {
                // std::cout << "model invalid" << std::endl;
                break;
            }

            // run the backpropagation and update the array

            // MORE LAYERS HERE

            // start with layer 2
            Array array_back2 = model_array(w2_local, bias_2_local, output_1, delta_2, lr, model_last, alpha, training);
            delta_1[0] = array_back2.delta_kmin1[0];
            delta_1[1] = array_back2.delta_kmin1[1];
            // update the weights and biases
            for (int n = 0; n<ARRAY_SIZE; n++) {
                bias_2_local[n] = array_back2.bias_change[n];
                for (int m = 0;m<ARRAY_SIZE; m++) {
                    w2_local[n][m] = array_back2.weight_changes[n][m];
                }
            }
            // end with layer 1
            Array array_back1 = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, training);

            // update the weights and biases
            for (int n = 0; n<ARRAY_SIZE; n++) {
                bias_1_local[n] = array_back1.bias_change[n];
                for (int m = 0; m<ARRAY_SIZE; m++) {
                    w1_local[n][m] = array_back1.weight_changes[n][m];
                }
            }

            if ((training == 0) && (j == 3)) { // CHANGE TO MORE DATA POINTS
                break; // only run this for all 4 data points once if infering
            }
        }

        // store inaccuracy for model training reference
        float inaccuracy;
        inaccuracy = y[j] - output_2[0];
        //cout  << inaccuracy << endl;

        if (training == 0) {
            break; // only run this once if we are inferring
        }
    }

    // produce the final weights to be used in inference
    for (int n = 0; n<ARRAY_SIZE; n++) {
        output_array.new_b1[n] = bias_1_local[n];
        output_array.new_b2[n] = bias_2_local[n];
        for (int m = 0;m<ARRAY_SIZE; m++) {
            output_array.new_w1[n][m] = w1_local[n][m];
            output_array.new_w2[n][m] = w2_local[n][m];
        }
    }

    return output_array;
}
