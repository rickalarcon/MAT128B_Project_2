load('mnist_all.mat');
%I created two for loops to create the matrix average
% and to iterite each row to find its imagen

for k = 0:9
    %this loop created the table of 10 x 784 columns of average numbers
    for i = 0:9
        filename=sprintf('%s%d','train',i);
        myVar = eval(filename);
        T(i+1,:) = mean(myVar);
    end
%the second loop wil generate the imagens for each average number
% they will be display in one plot using subplot()
subplot(2,5,k+1);
number=T(k+1,:);
digitImage = reshape(number,28,28);
image(rot90(flipud(digitImage),-1));
colormap(gray(256)),axis square tight off;
hold on;
end


