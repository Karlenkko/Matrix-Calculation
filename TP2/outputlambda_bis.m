function [lbda,X0, Z] = outputlambda_bis(Z)
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

Y1 = ones(1, 600);
X1 = X0';
while (1 - abs(dot(X1, Y1) / (norm(X1) * norm(Y1))) > err)
    X1 = Y1 / norm(Y1);
    Y1 = X1 * Z;
end
Z = Z + 1 / lbda * (X0 * X1) / (X1 * X0);
end

