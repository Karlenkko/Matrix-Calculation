function [X] = Jacobi(A,B)
err = 1e-2;
M = zeros(size(A));
X = zeros(size(B));
D = diag(A);
for n = 1 : size(A, 1)
    M(n,n) = D(n);
end
N = A - M;
while (abs(sum(A*X - B)) > err)
    X = B ./ D - N * X ./ D;
end
end
