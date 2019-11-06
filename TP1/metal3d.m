close all
clear all

%% initialization
B = metalmatb();
A = metalmata(B);
tic
X = Jacobi(A, B);
toc
% tic
% X = test(A, B);
% toc
% tic
% X = inv(A) * B;
% toc
X = reshape(X, 20, 25);
figure()
surf(X);

