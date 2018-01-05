%this function flips a matrix on its right side
function [mirrorMatrix] = mn535Recitation6Problem1(matrix)

[y, x] = size(matrix);

mirrorMatrix = matrix;

for i=1:x %iterate through rows
    for j=1:y %iterate through columns
        mirrorMatrix(i, j) = matrix (j,i); %assign x values to y position and y values to x position
    end
end
