function network = mult_net(X, W, hid) %data, weights, hid
  % X = input data of pixels in row form
  % W = weight matrix
  % hid = number of hidden layers wanted
  
  % convert the input to be zeros and ones only
  
  if ~exist('hid','var')
    hid = size(W{2},1);
  end
  
  if(isa(X, 'uint8'))
    input = (X > 0);
  end
  
  if(isa(X, 'logical'))
    input = double(input);
  end
  
  numNeuron = size(W{1},1);
  net = zeros(1,size(W{2},2));
  out = zeros(1,size(W{2},2));
  
  for i = 1:numNeuron
    [net(i),out(i)] = neuron(input, W{1}(i,:));
  end
  
  for i = 1:hid
    for j = 1:numNeuron
      net(j) = net(j) * W{2}(i,j);
    end
  end
  
  out = 1./(1.+exp(-net));
  network = out;
 
end