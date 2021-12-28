%23 Random Walk
%Visualization
%Fotios Ioannis Giasemis

close all;
clear all;
clc;
x(1,1)=0; y(1,1)=0;z(1,1)=0;
for i=2:1000;
    
    c= -1 + 2.*rand(1,1); %random number between -1 and 1
    x(1,i)=x(1,i-1)+c;
    
    e= -1 + 2.*rand(1,1); %random number between -1 and 1
    while (e^2+c^2)>=1
            e= -1 + 2.*rand(1,1); %random number between -1 and 1
    end
    y(1,i)=y(1,i-1)+e;

    if rand<.5 %motion in both directions
        t=2;
    else
        t=1;
    end
    
    z(1,i)=z(1,i-1)+((-1)^t)*sqrt(1-c^2-e^2); %fixed the step size
    
    scatter3(x,y,z,'.')
    axis([-50 50 -50 50 -50 50]./3);
    set(gca,'YTickLabel',[]);
    set(gca,'XTickLabel',[]);
    xlabel(i)
    pause(.000000000000001)
end

    