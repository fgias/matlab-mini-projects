%CO32 
%Fourier Optics
%Discrete Fourier Transform (DFT)
%Fotios Ioannis Giasemis
%Part 6

clear all;

clc
N=25; M=25; 
If=zeros(2*N,2*M);
Rf=zeros(2*N,2*M);

Rf(25,25)=Rf(25,25)+1; Rf(25,26)=Rf(25,26)+1; Rf(25,24)=Rf(25,24)+1;
Rf(24,25)=Rf(24,25)+1; Rf(26,25)=Rf(26,25)+1;
   
for i=(-N):(N-1)
    for j=(-M):(M-1)
        s1=0; s2=0;
        for k=(-N):(N-1)
            for l=(-M):(M-1)
            s1=s1+Rf(k+N+1,l+N+1)*cos(-pi*k*i/N-pi*l*j/M)-If(k+N+1,l+N+1)*sin(-pi*k*i/N-pi*l*j/M);
            s2=s2+Rf(k+N+1,l+N+1)*sin(-pi*k*i/N-pi*l*j/M)+If(k+N+1,l+N+1)*cos(-pi*k*i/N-pi*l*j/M);
            RF(j+N+1,i+N+1)=1/(4*N*M)*s1;
            IF(j+N+1,i+N+1)=1/(4*N*M)*s2;
            end
          
        end
    end
 
end

amp=sqrt(RF.^2+IF.^2);

 figure
    subplot(1,2,1)
    surf(Rf)
    subplot(1,2,2)
    surf(amp)
