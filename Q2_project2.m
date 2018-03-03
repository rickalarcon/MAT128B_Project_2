
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

%get average look of the digits

function average = myaverage(db)
    newimage = [];
    i=0;
    length = length(db);
    for i = 1:length
        newimagen[i]= mean(data[:,i+1]);
    end
end

%{
# get average look of the digit
get_average <- function(data){
  pixel <- vector(mode = "numeric", length = 256)
  for(i in 1:256){
    pixel[i] <- mean(data[,i+1])
  }
  image_mat <- matrix(pixel, 16, 16)
  image(image_mat, col = paste("grey", 1:99), ylim = c(1,0))}
}%