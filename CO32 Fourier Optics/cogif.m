%CO32 
%Fourier Optics
%Discrete Fourier Transform (DFT)
%Fotios Ioannis Giasemis

clear all;

clc
N=25; M=25; 
f=12;

for A=1:.5:6
    If=zeros(2*N,2*M);
    Rf=zeros(2*N,2*M);
    
    for m=24:26
        for n=15:35
            Rf(m,n)=Rf(m,n)+7-A;
        end
    end
   
    
    
    
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
    
    fig=figure;
    surf(amp)
    xlim([0 50])
    ylim([0 50])
    zlim([0 0.2])
    pause(0.0001)
    saveas(fig,sprintf('FIG%d.png',f));
    f=f+1;
    close
    
  
    
    
end

    


