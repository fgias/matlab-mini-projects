%Boltzmann dist
%Visualization
%Fotios Ioannis Giasemis

N=input('N=');
M=N;
Z=input('Iterations=');

A=ones(N,M);

for i=1:Z;
    
    X=randi(N); Y=randi(M);
    
    while A(X,Y)<=0
    X=randi(N); Y=randi(M);
    end
    
    A(X,Y)=A(X,Y)-1;
     
    X=randi(N); Y=randi(M);
    A(X,Y)=A(X,Y)+1;

    histogram(A) 
    xlim([-.5 10]) %fix the limits of the axes
    ylim([0 N*M]) %we know that y cannot be larger than NM
    pause(.0001) %stop the process for a small interval of time
end

histogram(A)
xlim([-.5 10])
ylim([0 N*M])
clc; clear