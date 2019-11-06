function[] = video(A,U)
dt = 0.1;
Ttot = 10;
T = zeros(20,25); 
for i=1:1:20
    for j=1:1:25
        T(i,j)= U(25*(i-1)+j);
    end
end

%figure(1);
surf(T);
pause(0.1);
for k=1:1:Ttot/dt
    U = expm(A*dt)*U;
    for i=1:1:20
        for j=1:1:25
            T(i,j)= U(25*(i-1)+j);
        end
    end
    clf
    surf(T);
    pause(0.01);
end
end
    