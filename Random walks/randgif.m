%Random Walk
%Visualization
%GIF
%Fotios Ioannis Giasemis

X(1,1)=0;
Y1(1,1)=0;

for i=2:100;
    
    Y1(1,i)=Y1(1,i-1)+randn;
    X(1,i)=i;
    fig=figure;
    plot(X,Y1,'red')
    title('Random Walk')
    xlabel('time')
    ylabel('position')
    axis([0 100 -20 20]);
    hold on;
    saveas(fig,sprintf('FIG%d.png',i));
    
end

clear all;
