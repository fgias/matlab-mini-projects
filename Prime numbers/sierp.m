%Sierpinski Numbers
%Prime Numbers
%Fotios Ioannis Giasemis
clear all; clc

k=input('k='); %form k * 2^n + 1
for j=1:10000
    X=k*2^j+1;

    N=sqrt(X);

    A=0;

    for i=2:N;

        if mod(X,i)==0

            A=1;

            break

        end
    end
    
    
    if A==0
        X
        display('for')
        j
        break
    end
    
end