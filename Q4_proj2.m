%% Part 4
load('mnist_all.mat');

% each layer needs 10 neurons, one for each digit
% can input any number of numLayers and numNeurons
numLayers = 3;
numNeurons = 10;
w = cell(1,2);
w{1} = 0.01*rand(numNeurons,784);
w{2} = rand(numLayers,10);

% checking that neuron works
[tempnet, tempout] = neuron(train9(1,:) > 0, w{1});

%checking that multinetwork works
temp2 = mult_net(train5(1,:),w);

n = 100;
temp0 = zeros(n,numNeurons);
for i = 1:n
  temp0(i,:) = mult_net(train0(i,:), w);
end

n = length(train9);
temp9 = zeros(n,numNeurons);
for i = 1:n
  temp9(i,:) = mult_net(train9(i,:), w);
end