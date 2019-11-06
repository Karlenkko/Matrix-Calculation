function [A] = metalevomatA()
A = zeros(500,500);

A(1,1) = -3;
A(1,21) = 1;
A(1,2) = 1;
A(1, 361) = 1;

A(481,481) = -2;
A(481,461) = 1;
A(481, 482) = 1;

A(20,20) = -3;
A(20,19) = 1;
A(20,40) = 1;
A(20,500) = 1;

A(500,500) = -3;
A(500,499) = 1;
A(500,480) = 1;
A(500,20) = 1;

%% bord en haut
for i = 21 : 20 : 341
    A(i,i) = -3;
    A(i,i-20) = 1;
    A(i,i+20) = 1;
    A(i,i+1) = 1;
end
A(361,361) = -4;
A(361,362) = 1;
A(361,381) = 1;
A(361,341) = 1;
A(361,1) = 1;
for i = 381 : 20 : 461
    A(i,i) = -3;
    A(i,i-20) = 1;
    A(i,i+20) = 1;
    A(i,i+1) = 1;
end

%% bord en bas
for i = 40: 20 : 480
    A(i,i) = -3;
    A(i,i-20) = 1;
    A(i,i+20) = 1;
    A(i,i-1) = 1;
end

%% bord a gauche
for i = 2 : 9
    A(i,i) = -4;
    A(i,i-1) = 1;
    A(i,i+1) = 1;
    A(i,i+20) = 1;
    A(i,i+360) = 1;
end
A(10,10) = -3;
A(10,9) = 1;
A(10,30) = 1;
A(10,370) = 1;
A(11,11) = -3;
A(11,12) = 1;
A(11,31) = 1;
A(11,491) = 1;
for i = 12 : 19
    A(i,i) = -4;
    A(i,i-1) = 1;
    A(i,i+1) = 1;
    A(i,i+20) = 1;
    A(i,i+480) = 1;
end

%% bord a droite
for i = 482: 490
    A(i,i) = -3;
    A(i,i-1) = 1;
    A(i,i+1) = 1;
    A(i,i-20) = 1;
end
for i = 491:499
    A(i,i) = -4;
    A(i,i-1) = 1;
    A(i,i+1) = 1;
    A(i,i-20) = 1;
    A(i,i-480) = 1;
end
%% points generaux
for i = 21 : 479
    if (mod(i,20) ~= 0 && mod(i,20) ~= 1)
        A(i,i) = -4;
        A(i,i-1) = 1;
        A(i,i+1) = 1;
        A(i,i-20) = 1;
        A(i,i+20) = 1;
    end
end

%% points speciaux
for i = 362 : 370
    A(i,:) = zeros(1,500);
    A(i,i) = -5;
    A(i,i-1) = 1;
    A(i,i+1) = 1;
    A(i,i-20) = 1;
    A(i,i+20) = 1;
    A(i,i-360) = 1;
end

for i = 30 : 20 : 230
    A(i,:) = zeros(1,500);
    A(i,i) = -3;
    A(i,i-1) = 1;
    A(i,i-20) = 1;
    A(i,i+20) = 1;
end
for i = 31 : 20 : 231
    A(i,:) = zeros(1,500);
    A(i,i) = -3;
    A(i,i+1) = 1;
    A(i,i-20) = 1;
    A(i,i+20) = 1;
end
end

