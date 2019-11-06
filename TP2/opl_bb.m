function [lbda,Z] = opl_bb(Z)
V0 = ones(600, 1);
U0 = V0';
err = 1e-10;
Y0 = V0;
X0 = [zeros(599, 1); 10];
while (1 - abs(dot(X0, Y0) / (norm(X0) * norm(Y0))) > err)
    X0 = Y0 / norm(Y0);
    Y0 = Z * X0;
end
lbda = - 1 / moy(Y0, X0);

A = inv(Z);

Z = inv(A);
end

