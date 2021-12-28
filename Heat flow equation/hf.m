%Heat Flow in infinitely long bar
%F.I. Giasemis

%equation that we derived: T0*exp(-bx)*cos(wt-bx)
%see Martin Kiffner's problem sheet #4 MT 2016

clear all;
T0=5; b=.35; w=1;
x=0:.1:20;

for t=0:.05:40
    T=T0*exp(-b*x).*cos(w*t-b*x);
    plot(x,T,'-')
    ylim([-T0 T0]); 
    xlim([0 20]);
    xlabel('Position (x)');
    ylabel('Temperature (T)')
    pause(.001)
end
clc