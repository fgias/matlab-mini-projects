%Normal Modes of a Square Membrane
%Part 3
%F.I. Giasemis

clear all
disp('give two integers')
n=input('n=');
m=input('m=');
[x,y]=meshgrid(-5:.1:5);
A=10;
l=5;

for t=0:.05:10
    u=A*sin(m*pi*x/l).*sin(n*pi*y/l)*cos(sqrt(m^2+n^2)*t)+A*sin(n*pi*x/l).*sin(m*pi*y/l)*cos(sqrt(m^2+n^2)*t);
    surf(x,y,u)
    zlim([-2*A 2*A]);
    pause(.001)
end
clc
    
    