X = abalone_dataset;

autoenc = trainAutoencoder(X,4,'MaxEpochs',400,...
'DecoderTransferFunction','purelin');

XReconstructed = predict(autoenc,X);
mseError = mse(X-XReconstructed)

