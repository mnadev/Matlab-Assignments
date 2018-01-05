function [negativeImg] = mn535Recitation9Problem2(origImg)
negativeImg = uint8(255 - imread(origImg));
end