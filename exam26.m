function B = exam26(A)

n = length(A);

B = zeros(n);

B(1,:) = A;

for i = 2:n
    for j = i:n
        B(i,j-i+1) = B(1,j);
    end
end
        