%Logistic Map
%F. I. Giasemis

r=3;
for j=1:1000;
    r=r+.001;
    x=.5;
    for i=1:300;
       x=r*x*(1-x);
    end
    for i=1:400;
       X(j,i)=x;
       x=r*x*(1-x);
    end
end
plot(X,'.k','MarkerSize',2)
set(gca,'YTickLabel',[]);
set(gca,'XTickLabel',[]);
xlabel('r')
ylabel('x')
title('Logistic Map Bifurcation Diagram')