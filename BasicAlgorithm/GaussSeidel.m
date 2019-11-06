function [X] = GaussSeidel(A, B)
err = 1e-2;
X = zeros(size(B));
M = tril(A,0);
N = A - M;
newM = inv(M);
while (abs(sum(A*X - B)) > err)
    temp = B - N * X;
    % coeff = sum(M, 1);
%     for i = 1: size(B)
%         X(i) = temp(i) / coeff(i);
%     end
    X = newM * temp;
end
end

