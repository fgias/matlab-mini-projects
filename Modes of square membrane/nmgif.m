%Normal Modes of a Square Membrane
%Making a GIF
%F.I. Giasemis

clear all
disp('give two positive integers');
n=1;
m=1;
[x,y]=meshgrid(-5:.1:5);
A=10;
l=5;
i=1;

for t=0:.1:(2*pi/sqrt(2));
    u=A*sin(m*pi*x/l).*sin(n*pi*y/l)*cos(sqrt(m^2+n^2)*t);
    fig=figure;
    surf(x,y,u);
    zlim([-A A]);
    saveas(fig,sprintf('FIG%d.png',i));
    i=i+1;
    close;
end
clc
    
    