function [x] = test( a , b )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

c=size(a,1);
x=zeros(c,1);
x1=zeros(c,1);



    while max(abs(a*x-b))>=0.01
        
        
        for i=1:c
            s1=0;
            s2=0;
            
            for j=i+1:c
                s2=s2+a(i,j)*x(j);
            end
            
            for j=1:i-1
                s1=s1+a(i,j)*x1(j);
               
            end
        
            x1(i)=(b(i)-s1-s2)/a(i,i);    
        
        end
        
        x=x1;
        
    end
        
    end
    
    
    



