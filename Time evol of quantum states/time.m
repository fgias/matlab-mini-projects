%Time evolution of quantum states
%Fotios Ioannis Giasemis

clear;
L=1; w=1;
x=[0:.01:1];

for t=0:.1:50
    
    P=2/L*(sin(pi*x/L)).^2+2/L*(sin(2*pi*x/L)).^2+4/L*sin(pi*x/L).*sin(2*pi*x/L)*cos(w*t); 
    plot(x,P,'LineWidth',2)
    set(gca,'YTickLabel',[]);
    set(gca,'XTickLabel',[]);
    xlim([0 1])
    ylim([0 7])
    xlabel('Position')
    ylabel('Probability distribution')
    title('Symmetirical superposition of the the ground and the first excited state of the particle in a box model')
    pause(.01)
end

clear;clc
