
%WEBSITE TO DOWNLOAD: http://academics.davidson.edu/math/chartier/Numerical/matlab.html
% mnist_all.mat: contains the MNIST database of handwritten digits.
%It has 10 test tables and 10 train tables
%It contains a training set of 60,000 numbers and a test set of 10,000 numbers.
load('mnist_all.mat');
% to see the what is in our data
who
%ie. each row in train 0 is one handwritten zero
%To visulize the first image in train0, we have:
digit= train0(1,:);
digitImage = reshape(digit,28,28);
image(rot90(flipud(digitImage),-1));
colormap(gray(256)),axis square tight off;

%To visulize the first image in train1, we have:
digit= train1(1,:);
digitImage = reshape(digit,28,28);
image(rot90(flipud(digitImage),-1));
colormap(gray(256)),axis square tight off;

%To visulize the first image in train2, we have:
digit= train2(1,:);
digitImage = reshape(digit,28,28);
image(rot90(flipud(digitImage),-1));
colormap(gray(256)),axis square tight off;