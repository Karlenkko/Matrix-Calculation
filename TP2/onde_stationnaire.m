close all
clear all
%% initialization
A = matAA();
lmax = zeros(20,1);
tX0 = zeros(600, 20);

%% iteration
% for i = 1:6
%     [lmax(i), tX0(:,i), A] = outputlambda(A);
%     dr = - lmax(1) * tX0(:,i);
%     tX0(:,i) = dr;
%     dr = reshape(dr, 40, 15)';
% %     figure(i)
%     surf(dr);
% 
% end

lmin = zeros(50, 1);
A = matAA();
Z = inv(A);
for i = 1 : 10
    [lmin(i), X0, Z] = outputlambda_bis(Z);
    X0 = reshape(X0,40,15)';
    surf(X0);
    pause;
end


% title('onde stationnaire de mode 1 sur le tambour');xlabel('40 points');ylabel('15 points');zlabel('amplitude');
% saveas(gcf,'onde1.jpg')

%% vp la plus proche du target
target = 6.82;
A = matAA();
Zc = inv(A + target * eye(600));
[vp, Zc] = outputlambda(Zc);
vp = 1 / vp + target;


%% singular value
A = matAA();
S = svd(A);
B = sortrows(abs(eig(A)),-1);