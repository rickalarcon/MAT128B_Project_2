%% Part 6
numLayers = 1;
numNeurons = 10;
w = cell(1,2);
w{1} = 0.01*rand(numNeurons,784);
w{2} = rand(numLayers,10);
%%
n = 5;
digit0 = zeros(n,numNeurons);
for i = 1:n
  digit0(i,:) = mult_net(train0(i,:), w);
end

%%
target0 = [1,0,0,0,0,0,0,0,0,0];
error = abs(target0 - digit0);

df = @(x,y)(y.*(1-y).*(x));
tr_coeff = 0.05;
%%
out0 = zeros(n,numNeurons);
for i = 1:n
  for j = 1:numNeurons
    [~, out0(i,:)] = neuron(train0(i,:), w{1}(j,:));
  end
end

%%
delta = df(error,digit0);
w{2} = tr_coeff.*delta(1,:);
for i = 1:n
  digit0(i,:) = mult_net(train0(i,:), w);
end

%%
digit0 = mult_net(train0(1,:), w);
error0 = abs(target0 - digit0);
delta0 = df(error0,digit0);
out0 = zeros(1,10);
for i = 1:numNeurons
  [~,out0(i)] = neuron(train0(1,:) > 0, w{1}(i,:));
end
w{2} = w{2} + tr_coeff.*delta0.*out0;
%%
digit0new = mult_net(train0(1,:), w);
error0 = abs(target0 - digit0new);
delta0 = df(error0,digit0new);
for i = 1:numNeurons
  [~,out0(i)] = neuron(train0(1,:) > 0, w{1}(i,:));
end
w{2} = w{2} + tr_coeff.*delta0.*out0;
digit0new1 = mult_net(train0(1,:), w);

%% digit 1
target1 = [0,1,0,0,0,0,0,0,0,0];
digit1 = mult_net(train1(1,:), w);
error1 = abs(target1 - digit1);
delta1 = df(error1,digit1);
out1 = zeros(1,10);
for i = 1:numNeurons
  [~,out1(i)] = neuron(train1(1,:) > 0, w{1}(i,:));
end
w{2} = w{2} - tr_coeff.*delta1.*out1;
%%
digit1new = mult_net(train1(1,:), w);
error1 = abs(target1 - digit1new);
delta1 = df(error1,digit1new);
for i = 1:numNeurons
  [~,out1(i)] = neuron(train1(1,:) > 0, w{1}(i,:));
end
w{2} = w{2} + tr_coeff.*delta1.*out1;
digit1new1 = mult_net(train1(1,:), w);

%% digit 8
target8 = [0,0,0,0,0,0,0,0,1,0];
digit8 = mult_net(train1(1,:), w);
error8 = abs(target8 - digit8);
delta8 = df(error8,digit8);
out8 = zeros(1,10);
for i = 1:numNeurons
  [~,out8(i)] = neuron(train8(1,:) > 0, w{1}(i,:));
end
w{2} = w{2} - tr_coeff.*delta8.*out8;
%%
digit8new = mult_net(train8(1,:), w);
error8 = abs(target8 - digit8new);
delta8 = df(error8,digit8new);
for i = 1:numNeurons
  [~,out8(i)] = neuron(train8(1,:) > 0, w{1}(i,:));
end
w{2} = w{2} + tr_coeff.*delta8.*out8;
digit8new1 = mult_net(train8(1,:), w);
