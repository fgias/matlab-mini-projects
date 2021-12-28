%Boltzmann dist
%Fotios Ioannis Giasemis

N=input('N=');
M=N; %=input('M=');
Z=input('Iterations='); %Z should be much larger than N,M

A=ones(N,M);

for i=1:Z;
    
    X=randi(N); Y=randi(M);
    
    while A(X,Y)<=0
    X=randi(N); Y=randi(M);
    end
    
    A(X,Y)=A(X,Y)-1;
     
    X=randi(N); Y=randi(M);
    A(X,Y)=A(X,Y)+1;
end

histogram(A)
clc; clear;