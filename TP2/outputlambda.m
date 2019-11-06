function [lbda, X0, A] = outputlambda(A)
V0 = ones(600, 1);
err = 1e-8;
Y0 = V0;
X0 = [zeros(599, 1); 10];   % vect V
while (1 - abs(dot(X0, Y0) / (norm(X0) * norm(Y0))) > err)
    X0 = Y0 / norm(Y0);
    Y0 = A * X0;
end
lbda = - moy(Y0, X0);

Y1 = ones(1, 600);
X1 = X0';   % vect U
while (1 - abs(dot(X1, Y1) / (norm(X1) * norm(Y1))) > err)
    X1 = Y1 / norm(Y1);
    Y1 = X1 * A;
end
A = A + lbda * (X0 * X1) / (X1 * X0);
end

