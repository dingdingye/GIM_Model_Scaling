#include "layer.h"
#include "activations.h"
#include "error.h"
#include "accelerator.h"
#include "top.h"
#include <vector>
#include <iostream> 
#include <ap_fixed.h>


using namespace std;  

int main() {

    std::array<std::array<std::array<fixed6_6, 1>, IN_SIZE>, DATA_SIZE> input = {{
        {{{fixed6_6(0.0)}, {fixed6_6(0.0)}}},
        {{{fixed6_6(0.0)}, {fixed6_6(1.0)}}},
        {{{fixed6_6(1.0)}, {fixed6_6(0.0)}}},
        {{{fixed6_6(1.0)}, {fixed6_6(1.0)}}}
    }};

    std::array<std::array<fixed6_6, OUT_SIZE>, DATA_SIZE> y_true = {{
        {fixed6_6(1.0), fixed6_6(0.0)},
        {fixed6_6(0.0), fixed6_6(1.0)},
        {fixed6_6(0.0), fixed6_6(1.0)},
        {fixed6_6(1.0), fixed6_6(0.0)},
    }};

    // Declare training and testing arrays
    std::array<std::array<std::array<fixed6_6, 1>, IN_SIZE>, TRAIN_SIZE> input_train;
    std::array<std::array<fixed6_6, OUT_SIZE>, TRAIN_SIZE> y_train;

    // Populate training data
    for (int i = 0; i < TRAIN_SIZE; ++i) {
        input_train[i] = input[i];
        y_train[i] = y_true[i];
    }
    
    int done;
    fixed32_8 train_accuracy, test_accuracy;    

    top(input_train, y_train, train_accuracy, done);

    return 0;
}