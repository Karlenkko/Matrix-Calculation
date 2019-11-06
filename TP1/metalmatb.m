function [mat] = metalmatb()
mat = zeros(500,1);
for i = 1:500
    if (mod(i, 20) == 1 || mod(i, 20) == 0)
        mat(i) = 100;
    end
    if ((i < 260)&&(mod(i, 20) == 10 || mod(i, 20) == 11))
        mat(i) = 100;
    end
    if (i > 480 && i < 492)
        mat(i) = 100;
    end
    if (i == 195 || i == 196 || i == 215 || i == 216)
        mat(i) = 500;
    end
    if (i == 405 || i == 406 || i == 425 || i == 426)
        mat(i) = 500;
    end
end
end

