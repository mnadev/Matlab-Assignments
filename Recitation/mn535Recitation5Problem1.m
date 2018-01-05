% this script calculates a fibonacci sequence of length n
function [fibonacciArray] = mn535Recitation5Problem1(n)

% create sequence
if n > 1
    fibonacciArray = [0 1];
    if n > 2
        for counter = 3:1:n
            fibonacciArray(counter) = fibonacciArray(counter - 1) + fibonacciArray(counter - 2);
        end  
    end
end


