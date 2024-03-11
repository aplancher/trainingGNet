# trainingGNet

## Abalone Autoencoder
This repository contains code for training an autoencoder on the Abalone dataset. The autoencoder is trained using MATLAB's 'trainAutoencoder' function, with a specified number of hidden units and maximum epochs.

### Usage
[To use this code:
1. Ensure you have MATLAB installed on your system
2. Clone this respostitory
3. Open MATLAB and navigate to cloned directory
4. Run the provided MATLAB files' script.]

### Description
This repo contains MATLAB scripts for:
1. 'dataSet.m': This script trains an autoencoder using the Abalone dataset. It uses the trainAutoencoder function with the following parameters:

    Number of hidden units: 25
    Encoder transfer function: logsig
    Decoder transfer function: purelin
    L2 weight regularization: 0.001
    Sparsity regularization: 4
    Sparsity proportion: 0.10
2. After training, it reconstructs the input data and plots the original and reconstructed data.
plot_training.m: This script demonstrates the training progress of the autoencoder. It uses the trainingOptions function with stochastic gradient descent with momentum (sgdm) and specifies the following options:

    Maximum epochs: 8
    Validation data: Provided validation data ('XValidation' and 'YValidation')
    Validation frequency: 30
    Verbose: False (no verbose output during training)
    Plotting: Training progress plot
3. 'classify_Img.m': This script demonstrates how to classify images using a pre-trained GoogleNet model. It loads the model using GoogLenet, resizes an example image, and performs classification. The script outputs the top 5 predictions along with their probabilities.

### Files
1. dataSet.m: MATLAB script for training the autoencoder.
2. plot_training.m: MATLAB script for plotting the training progress.
3. classify_Img.m: MATLAB script for classifying images using GoogleNet.

### Results
Upon running the scripts, you'll obtain various results including reconstructed data from the autoencoder and image classification predictions from GoogLeNet.
