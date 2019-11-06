function [A] = matA()
A = eye(600);
for i = 2: 14
    A(i, i - 1) = -1/3;
    A(i, i + 1) = -1/3;
    A(i, i + 40) = -1/3;
end

for i = 1 : 13
    j = i * 40 + 1;
    A(j, j - 40) = -1/3;
    A(j, j + 40) = -1/3;
    A(j, j + 1) = -1/3;
end

for i = 42 : 450
    A(i, i - 1) = -1/4;
    A(i, i + 1) = -1/4;
    A(i, i - 40) = -1/4;
    A(i, i + 40) = -1/4;
end
for i = 460 : 559
    A(i, i - 1) = -1/4;
    A(i, i + 1) = -1/4;
    A(i, i - 40) = -1/4;
    A(i, i + 40) = -1/4;
end
end

