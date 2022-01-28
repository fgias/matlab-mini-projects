%Boltzmann dist
%Visualization: Pseudocolors
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

    pcolor(A)
    axis equal tight
    colorbar
    pause(.01) %stop the process for a small interval of time
end

%Problem with algorithm: The colorbar values are relabeled after ~200 iterations.

pcolor(A)
axis equal tight
colorbar
clc; clear;