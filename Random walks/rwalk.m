%Random Walk
%Fotios Ioannis Giasemis

X(1,1)=0;
Y1(1,1)=0;
Y2(1,1)=0;
for i=2:100;
    
    Y1(1,i)=Y1(1,i-1)+randn;
    Y2(1,i)=Y2(1,i-1)+randn;
    X(1,i)=i;
    
    
    
end

plot(X,Y1);
axis([0 100 -20 20]);
hold on;
plot(X,Y2);
clear all;