
xLength = 4;
yLength = 4;


array = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16;];
for i=2:4
    for j=2:4
        array(i,j) = array(xLength - i + 1, yLength - j + 1); 
    end
end