function [mat] = metalmata(B)
mat = eye(500);
err = 1e-2;
for i = 2: 9
    mat(i, i + 20) = -0.25;
    mat(i, i + 360) = -0.25;
    mat(i, i - 1) = -0.25;
    mat(i, i + 1) = -0.25;
end
for i = 12: 19
    mat(i, i + 20) = -0.25;
    mat(i, i + 480) = -0.25;
    mat(i, i - 1) = -0.25;
    mat(i, i + 1) = -0.25;
end
for i = 492: 499
    mat(i, i - 20) = -0.25;
    mat(i, i - 480) = -0.25;
    mat(i, i - 1) = -0.25;
    mat(i, i + 1) = -0.25;
end
for i = 362: 370
    mat(i, i - 20) = -0.2;
    mat(i, i + 20) = -0.2;
    mat(i, i - 1) = -0.2;
    mat(i, i + 1) = -0.2;
    mat(i, i - 360) = -0.2;
end
for i = 21: 359
    if (B(i) == 0)
        mat(i, i - 20) = -0.25;
        mat(i, i + 20) = -0.25;
        mat(i, i - 1) = -0.25;
        mat(i, i + 1) = -0.25;
    end
end
for i = 371: 479
    if (B(i) == 0)
        mat(i, i - 20) = -0.25;
        mat(i, i + 20) = -0.25;
        mat(i, i - 1) = -0.25;
        mat(i, i + 1) = -0.25;
    end
end
end
