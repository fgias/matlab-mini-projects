%Time evolution of quantum states
%GIF
%Fotios Ioannis Giasemis

clear;
L=1; w=1;
x=[0:.01:1];

for t=0:.1:(2*pi)
    
    P=2/L*(sin(pi*x/L)).^2+2/L*(sin(2*pi*x/L)).^2+4/L*sin(pi*x/L).*sin(2*pi*x/L)*cos(w*t); 
    fig=figure;
    plot(x,P,'LineWidth',2)
    set(gca,'YTickLabel',[]);
    set(gca,'XTickLabel',[]);
    xlim([0 1])
    ylim([0 7])
    xlabel('Position')
    ylabel('Probability distribution')
    title('Symmetrical Superposition of the Ground and the First Excited State of the Particle in a Box Model')
    saveas(fig,sprintf('FIG%d.png',i));
    i=i+1;
    close
end

clear;clc
