function [A] = matAA()
A = eye(600);
flag = zeros(600,1);
for i = 2: 14
    A(i, i) = -3;
    flag(i) = 1;
    A(i, i - 1) = 1;
    A(i, i + 1) = 1;
    A(i, i + 40) = 1;
end

for i = 1 : 13
    j = i * 40 + 1;
    A(j, j) = -3;
    flag(j) = 1;
    A(j, j - 40) = 1;
    A(j, j + 40) = 1;
    A(j, j + 1) = 1;
end

for i = 42 : 450
    if (flag(i) ~= 1 && mod(i, 40) ~= 0)
        A(i, i) = -4;
        flag(i) = 1;
        A(i, i - 1) = 1;
        A(i, i + 1) = 1;
        A(i, i - 40) = 1;
        A(i, i + 40) = 1;
    end
end
for i = 460 : 559
    if (flag(i) ~= 1 && mod(i, 40) ~= 0)
        A(i, i) = -4;
        flag(i) = 1;
        A(i, i - 1) = 1;
        A(i, i + 1) = 1;
        A(i, i - 40) = 1;
        A(i, i + 40) = 1;
    end
end
end

