function [net,out] = neuron(X, W)
  % X = input data of one number
  % W = vector from weight matrix
  
  if(isa(X, 'uint8') || isa(X, 'logical'))
    input = double(X);
  else
    input = X;
  end 
  
  net = input*W';
  
  out = 1./(1.+exp(-net));
end