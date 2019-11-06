close all
clear all

%% initialization
B = metalevomatB();
A = metalevomatA();
dt = 0.1;   % pas de temps
t = 500;    % temps total
XT = zeros(500, t/dt);
XT(:, 1) = B;   % condition initiale
tt = zeros(20, 25);
stableflag = 0;
mark = 0;
eqtemp = 0;
%% video config
% writerObj=VideoWriter('evolib');
% open(writerObj);
% figure('numbertitle','off','name','evolution libre de la temperature')

% iteration p1
temp = expm(A * dt);    % const

figure(1)
for i = 2 : t/dt
    XT(:, i) = temp * XT(:, i - 1);
    tt = reshape(XT(:, i - 1), 20, 25);
    % condition d'equilibre
    if i > 100 && stableflag == 0
        if sum(abs(XT(:, i) - XT(:, i - 100))) < 0.02 * 500
            stableflag = 1;
            mark = i;
            eqtemp = mean(XT(:, i));
        end
    end
    surf(tt);
%     title('evolution libre de la temperature');xlabel('25 points');ylabel('20 points');zlabel('temperature (degree)')
%     frame=getframe(gcf);
%     frame.cdata = imresize(frame.cdata, [500 800]);
%     writeVideo(writerObj,frame);
%     drawnow;
    pause(0.01);
end
% close(writerObj);

%% video config
% writerObj=VideoWriter('chauffage');
% open(writerObj);
% figure('numbertitle','off','name','chauffage de la plaque')

%% iteration p2
temp = expm(A * dt);    % const
figure(1)
for i = 2 : t/dt
    XT(:, i) = temp * XT(:, i - 1);
    XT(195,i) = 500;
    XT(196,i) = 500;
    XT(215,i) = 500;
    XT(216,i) = 500;
    XT(405,i) = 500;
    XT(406,i) = 500;
    XT(425,i) = 500;
    XT(426,i) = 500;
    tt = reshape(XT(:, i - 1), 20, 25);
    % condition d'equilibre
    if i > 100 && stableflag == 0
        if sum(abs(XT(:, i) - XT(:, i - 100))) < 0.02 * 500
            stableflag = 1;
            mark = i;
            eqtemp = mean(XT(:, i));
        end
    end    
    surf(tt);
%     title('chauffage de la plaque');xlabel('25 points');ylabel('20 points');zlabel('temperature (degree)')
%     frame=getframe(gcf);
%     frame.cdata = imresize(frame.cdata, [500 800]);
%     writeVideo(writerObj,frame);
%     drawnow;
    pause(0.01);
end
% close(writerObj);