function [flippedImage] = mn535Recitation6Problem2(doge)

%obtain dimensions of image
[y, x] = size(doge);

%initialize flippedIamge variable
flippedImage = doge;

for i=1:y %iterate through y values
    for j=1:x %iterate through x values
      flippedImage(i, j) = doge(y - i + 1,x - j + 1);  %move y values from bottom to top and xvalues from right to left
    end
end

imshow(flippedImage); %display flipped image