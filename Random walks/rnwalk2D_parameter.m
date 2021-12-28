%2D Random Walk
%with parameter
%Visualization
%Fotios Ioannis Giasemis

close all;
clear all;
x(1,1)=0; y(1,1)=0;
for i=2:10000;
   
    p=x(1,i-1);
    if p<=0
        temp=2;
    else
        temp=1;
    end
    
    c= -1 + 2.*rand(1,1); %random number between -1 and 1
    x(1,i)=x(1,i-1)+c+((-1)^temp)*(abs(p)/10);
    
    if rand<.5 %motion in both directions
        t=2;
    else
        t=1;
    end
    
    y(1,i)=y(1,i-1)+((-1)^t)*sqrt(1-c^2); %fixed the step size
    
    scatter(x,y,'.')
    axis([-120 120 -120 120]./2);
    set(gca,'YTickLabel',[]);
    set(gca,'XTickLabel',[]);
    xlabel(i)
    pause(.000000000000001)
end

    