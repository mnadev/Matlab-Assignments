x = zeros(3,3);
for horizontal = 1:1:3
    for vertical = 1:1:3
        x(vertical,horizontal) = vertical*horizontal;
    end
end