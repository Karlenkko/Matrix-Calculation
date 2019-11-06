function [mat] = metalevomatB()
mat = zeros(500,1);
for i = 1:500
    if (i == 195 || i == 196 || i == 215 || i == 216)
        mat(i) = 500;
    end
    if (i == 405 || i == 406 || i == 425 || i == 426)
        mat(i) = 500;
    end
end
end

