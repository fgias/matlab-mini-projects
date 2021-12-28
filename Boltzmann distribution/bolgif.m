%Boltzmann dist
%Visualization
%GIF
%Fotios Ioannis Giasemis

N=input('N(<40)=');
M=N; %=input('M(<40)=');
Z=input('Iterations(<1000)='); %Z should be much larger than N,M

A=ones(N,M);

for i=1:Z;
    
    X=randi(N); Y=randi(M);
    
    while A(X,Y)<=0
    X=randi(N); Y=randi(M);
    end
    
    A(X,Y)=A(X,Y)-1;
     
    X=randi(N); Y=randi(M);
    A(X,Y)=A(X,Y)+1;
    
    fig=figure
    histogram(A)
    xlim([-.5 10])
    ylim([0 N*M])
    
    if mod(i,10)==0 | i==1
        saveas(fig,sprintf('FIG%d.png',i))
    end
   
    close
end

histogram(A)
xlim([-.5 10])
ylim([0 N*M])
clc; clear