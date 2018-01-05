% this function returns an alternation array of 0s and 1s
function [alternatingArray] = mn535Recitation5Problem3(n)

% initialize array
alternatingArray = zeros(1,n);

%modify array to alternate
if mod(n,2) == 0

    for i = 2:2:n
        alternatingArray(i)= 1;
    end
    
elseif mod(n,2) == 1
    
    for j = 1:2:n
        alternatingArray(j) = 1;
    end
    
end
