%CO32 
%Fourier Optics
%Discrete Fourier Transform (DFT)
%Fotios Ioannis Giasemis
%Part 5

clear all;

N=250; 
If=zeros(1,500);
Rf=zeros(1,500);

for i=240:260;
    Rf(1,i)=Rf(1,i)+1;
end

s1=0; s2=0;

C=conv(Rf,Rf); C(1,1000)=0;

N=500;
for k=(-N):(N-1)
    s1=0;
    
    for j=(-N):(N-1)
        s1=s1+C(1,j+N+1)*exp(-pi*1i*j*k/N);
    end
    
    FC(1,k+N+1)=1/(2*N)*s1;
    
end

x=1:1000;
figure
plot(x,FC);


