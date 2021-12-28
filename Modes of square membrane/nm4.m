%Normal Modes of a Square Membrane
%Part 4
%F.I. Giasemis

clear all
disp('give two integers')
n=input('n=');
m=input('m=');
[x,y]=meshgrid(-5:.1:5);
A=10;
l=5;

for t=0:.05:30
    u=A*sin(m*pi*x/l).*sin(n*pi*y/l)*cos(sqrt(m^2+n^2)*t)+A*sin(n*pi*x/l).*sin(m*pi*y/l)*cos(sqrt(m^2+n^2)*t)+A*sin(2*m*pi*x/l).*sin(n*pi*y/l)*cos(sqrt(m^2+n^2)*t);
    surf(x,y,u)
    zlim([-3*A 3*A]);
    pause(.001)
end
clc
    
    