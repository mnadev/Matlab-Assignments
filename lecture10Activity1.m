doge = imread('doge.jpg');
m = length(doge);

doge(:,:,3) = 0;

for i = 1:m
    for j = 1:m
        doge(i,j,1) = 0;
    end
end
imshow(doge)