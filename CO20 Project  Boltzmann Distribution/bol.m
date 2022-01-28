%Boltzmann dist
%Fotios Ioannis Giasemis

N=input('N='); %dimension of square matrix; here we set N=20
M=N; %square matrix
Z=input('Iterations='); %number of iterations of the process

A=2.*ones(N,M); %matrix: initial configuration

for i=1:Z;
    
    X=randi(N); Y=randi(M); %pick two random integers -> random cell
    
    while A(X,Y)<=0 %make sure the energy E is not zero or less
    X=randi(N); Y=randi(M);
    end
    
    A(X,Y)=A(X,Y)-1; %extract one quantum
     
    X=randi(N); Y=randi(M); %pick a second random cell
    
    A(X,Y)=A(X,Y)+1; %add one quantum
    
end

histogram(A)

clc; clear;