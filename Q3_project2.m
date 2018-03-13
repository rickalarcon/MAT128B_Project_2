load("mnist_all.mat");
x = -10:0.01:100;
y = x.^2

NET = newff(minmax(x),[24 1],{'logsig','purelin'},'trainlm');

NET.trainparam.epochs = 60000;
NET.trainparam.goal = 1e-25;
NET.trainparam.er = 0.01;

NET = train(NET,x,y);
