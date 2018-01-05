function [grayNegImg] = mn535Recitation9Problem1(origImg)
doge = imread(origImg);
dogeGray = rgb2gray(doge);

grayNegImg = uint8(255 - dogeGray);

end