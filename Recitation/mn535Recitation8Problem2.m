function [xArray] = mn535Recitation8Problem2(A, b)
[y, ~] = size(b);
if y == 1
    b = b';
end

xArray = inv(A) * b;

