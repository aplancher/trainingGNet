rng(0,'twister'); % For reproducibility
n = 1000;
r = linspace(-10,10,n)';
x = 1 + r*5e-2 + sin(r)./r + 0.2*randn(n,1);


hiddenSize = 25;
autoenc = trainAutoencoder(x',hiddenSize,...
        'EncoderTransferFunction','logsig',...
        'DecoderTransferFunction','purelin',...
        'L2WeightRegularization',0.001,...
        'SparsityRegularization',4,...
        'SparsityProportion',0.10);

n = 1000;
r = sort(-10 + 20*rand(n,1));
xtest = 1 + r*5e-2 + sin(r)./r + 0.4*randn(n,1);

xReconstructed = predict(autoenc,xtest');

options = trainingOptions("sgdm", ...
    MaxEpochs=8, ...
    ValidationData={XValidation,YValidation}, ...
    ValidationFrequency=30, ...
    Verbose=false, ...
    Plots="training-progress");

figure;
plot(xtest,'r.');
hold on
plot(xReconstructed,'go');
