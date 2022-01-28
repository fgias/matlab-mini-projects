%CO32 
%Fourier Optics
%Discrete Fourier Transform (DFT)
%Fotios Ioannis Giasemis
%Part 2

clear all;

N=250; 
If=zeros(1,500);
Rf=zeros(1,500);

for i=(245-10):(255-10);
    Rf(1,i)=Rf(1,i)+1;
end

S1=0; S2=0;
   

for i=(-N):(N-1)
    s1=0; s2=0;
    for j=(-N):(N-1)
    s1=s1+Rf(1,j+N+1)*cos(-pi*j*i/N)-If(1,j+N+1)*sin(-pi*j*i/N);
    s2=s2+Rf(1,j+N+1)*sin(-pi*j*i/N)-If(1,j+N+1)*cos(-pi*j*i/N);
    end
    RF(1,i+N+1)=1/(2*N)*s1;
    IF(1,i+N+1)=1/(2*N)*s2;
    
end

x=1:500;amp=sqrt(RF.^2+IF.^2);
figure
subplot(1,2,1)
plot(x,Rf)
subplot(1,2,2)
plot(x,amp)

