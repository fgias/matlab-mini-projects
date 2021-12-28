%Heat Flow in infinitely long bar
%Making a GIF
%F.I. Giasemis

%equation that we derived: T0*exp(-bx)*cos(wt-bx)
%see Martin Kiffner's problem sheet #4 MT 2016

clear all;
T0=5; b=.35; w=1;
x=0:.1:20; i=1

for t=0:.1:(2*pi);
    T=T0*exp(-b*x).*cos(w*t-b*x);
    fig=figure;
    plot(x,T,'-');
    ylim([-T0 T0]); 
    xlim([0 20]);
    xlabel('Position (x)');
    ylabel('Temperature (T)');
    
    saveas(fig,sprintf('FIG%d.png',i));
    i=i+1;
    close
end
clc