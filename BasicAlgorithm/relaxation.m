function [Xr] = relaxation(A, B)
Xr = zeros(size(B));
Xgs = zeros(size(B));
err = 1e-2;
minraid = 1e5;
tempD = diag(A);
D = zeros(size(A));
for i = 1 : size(A,1)
    D(i,i) = tempD(i);
end
L = tril(A, -1);
U = triu(A, 1);
correctOmega = 0;
Pi = zeros(size(A));
temp = zeros(size(A));
for omega = err : err : (2 - err)
    temp1 = D + omega * L;
    temp2 = ((1 - omega)* D - omega * U);
    Pi = inv(D + omega * L) * ((1 - omega)* D - omega * U);
    [xtemp, ytemp] = eig(Pi);
    if (max(max(ytemp)) < minraid)
        minraid = max(max(ytemp));
        correctOmega = omega;
    end
end

M = tril(A,0);
N = A - M;
% while (abs(sum(A*Xr - B)) > err)
%     temp = B - N * Xr;
%     laststep = Xr;
%     for i = 1: size(B)
%         Xr(i) = correctOmega * temp(i) ./ sum(M(i,:)) + (1 - correctOmega) * laststep(i);
%     end
% end
newM = inv(M);
while (sum(abs(A*Xr - B)) > err)
    % better than abs(sum())
    temp = B - N * Xr;
    laststep = Xr;
    % coeff = sum(M, 1);
%     for i = 1: size(B)
%         X(i) = temp(i) / coeff(i);
%     end
    Xgs = newM * temp;
    Xr = correctOmega * (Xgs - laststep) + laststep;
end
end

