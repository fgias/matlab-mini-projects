%CO03
%Rocket Science
%4.1 Part 2
%Stationary Moon
%Improved Euler Method
%Fotios Ioannis Giasemis

x=3.7;y=0; deltat=10;
theta=(51.5/180)*pi; v=0.0066;
vx=v*cos(theta); vy=v*sin(theta);
G=9.63e-7; Me=83.3; Mm=1; Rm=1; Re=3.7;
xe=0; ye=0; xm=0; ym=222;
t=0;

i=1;

while 1<((x-xm)^2+(y-ym)^2) & t<10e6

    X(1,i)=x;
    Y(1,i)=y;
    
    ax=-G*Me*(x)/(sqrt(x^2+y^2))^3-G*Mm*(x-xm)/(sqrt((x-xm)^2+(y-ym)^2))^3;
    ay=-G*Me*(y)/(sqrt(x^2+y^2))^3-G*Mm*(y-ym)/(sqrt((x-xm)^2+(y-ym)^2))^3;
    
% Improving the Euler Method
   

   % Euler Method
   % vx=vx+deltat*ax;
   % vy=vy+deltat*ay;
    
   % x=x+deltat*vx;
   % y=y+deltat*vy;
   % t=t+deltat;
   

   xP=x+deltat*vx;
   yP=y+deltat*vy;
   
   axP=-G*Me*(xP)/(sqrt(xP^2+yP^2))^3-G*Mm*(xP-xm)/(sqrt((xP-xm)^2+(yP-ym)^2))^3;
   ayP=-G*Me*(yP)/(sqrt(xP^2+yP^2))^3-G*Mm*(yP-ym)/(sqrt((xP-xm)^2+(yP-ym)^2))^3;
   
   
   vxP=vx+deltat*(ax+axP)/2;
   vyP=vy+deltat*(ay+ayP)/2;
   
   x=x+deltat*(vx+vxP)/2;
   y=y+deltat*(vy+vyP)/2;
   
   vx=vxP;
   vy=vyP;

   t=t+deltat;
   
    i=i+1;
end

 scatter(X,Y)
 axis([-135 135 -20 250])
 
 %Did the rocket reach the moon?
 if 1>((x-xm)^2+(y-ym)^2)
     display('The rocket reached the moon')
 else
         display('The rocket did not reach the moon')
 end
 
 % Clear Workspace
 clear all;

