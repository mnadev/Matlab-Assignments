function out = exam23(in)

n = length(in);

out = zeros(1,2*n-1);

for i = 1:n
    out(2*i-1) = in(i);
end