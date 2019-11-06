function [l] = moy(Y, X)
len = max(size(Y));
count = 0;
sumlbd = 0;
for i = 1 : len
    if (abs(X(i)) > 1e-14)
        sumlbd = sumlbd + Y(i) / X(i);
        count = count + 1;
    end
end
if count == 0
    l = 1;
else
l = sumlbd / count;
end
end

