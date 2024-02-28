
net=googlenet;
inputSize = net.Layers(1).InputSize


classNames = net.Layers(end).ClassNames;
numClasses = numel(classNames);
disp(classNames(randperm(numClasses,10)))

imds = imread('peppers.png');
figure
imshow(imds)

size(imds)

imds = imresize(imds,inputSize(1:2));
figure
imshow(imds)





layers = net.Layers;



options = trainingOptions('sgdm', ...
    'InitialLearnRate', 0.001, ...
    'MaxEpochs', 20, ...
    'MiniBatchSize', 32, ...
    'ValidationFrequency', 10, ...
    'Verbose', true, ...
    'Plots', 'training-progress'); 


[label,scores] = classify(net,imds);


figure
imshow(imds)
title(string(label) + ", " + num2str(100*scores(classNames == label),3) + "%");

[~,idx] = sort(scores,'descend');
idx = idx(5:-1:1);
classNamesTop = net.Layers(end).ClassNames(idx);
scoresTop = scores(idx);

figure
barh(scoresTop)
xlim([0 1])
title('Top 5 Predictions')
xlabel('Probability')
yticklabels(classNamesTop)
