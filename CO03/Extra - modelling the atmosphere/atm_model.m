%CO03
%Rocket Science
%Extra: Modelling the atmosphere
%Improved Euler Method
%Fotios Ioannis Giasemis

x=0;y=3.7; deltat=10;
theta=(90/180)*pi; v=0.00738;


display('Would you like to give values for v and theta?')
display('"Yes"->1, "No"->0')
ANS=input('ANS=');

if ANS==1
    v=input('v(in km/sec)=');
    v=(v*1e3)/(1.737e6);
    theta=input('theta(in degrees)=');
    theta=(theta/180)*pi;
end



vx=v*cos(theta); vy=v*sin(theta);
G=9.63e-7; Me=83.3; Mm=1; Rm=1; Re=3.7;
xe=0; ye=0; R0=222;
omega=2.6615e-6;
t=0;

rho=8.74e-5;
cd=0.075;
A=1.28e-11;
m=2.76e-17;

i=1;

if (x^2+y^2)<(1.0157*3.7)^2 & vx~=0 & vy~=0
    while (x^2+y^2)<(1.0157*3.7)^2
        X(1,i)=x;
        Y(1,i)=y;
    
        %Fd=0.5*rho*cd*A*v^2, ad=Fd/m
    
        ax=-G*Me*(x)/(sqrt(x^2+y^2))^3-0.5*rho*cd*A*vx^2/m;
        ay=-G*Me*(y)/(sqrt(x^2+y^2))^3-0.5*rho*cd*A*vy^2/m;
    
        xP=x+deltat*vx;
        yP=y+deltat*vy;
   
        axP=-G*Me*(xP)/(sqrt(xP^2+yP^2))^3-0.5*rho*cd*A*vx^2/m;
        ayP=-G*Me*(yP)/(sqrt(xP^2+yP^2))^3-0.5*rho*cd*A*vy^2/m;
   
   
        vxP=vx+deltat*(ax+axP)/2;
        vyP=vy+deltat*(ay+ayP)/2;
   
        x=x+deltat*(vx+vxP)/2;
        y=y+deltat*(vy+vyP)/2;
   
        vx=vxP;
        vy=vyP;

        t=t+deltat;
   
   
        i=i+1;
    end
    
    while 3.7<=(x^2+y^2) & t<1e6 & vx~=0 &vy~=0
        X(1,i)=x;
        Y(1,i)=y;
    
        
    
        ax=-G*Me*(x)/(sqrt(x^2+y^2))^3;
        ay=-G*Me*(y)/(sqrt(x^2+y^2))^3;
    
        xP=x+deltat*vx;
        yP=y+deltat*vy;
   
        axP=-G*Me*(xP)/(sqrt(xP^2+yP^2))^3;
        ayP=-G*Me*(yP)/(sqrt(xP^2+yP^2))^3;
   
   
        vxP=vx+deltat*(ax+axP)/2;
        vyP=vy+deltat*(ay+ayP)/2;
   
        x=x+deltat*(vx+vxP)/2;
        y=y+deltat*(vy+vyP)/2;
   
        vx=vxP;
        vy=vyP;

        t=t+deltat;
   
        
   
        i=i+1;
    end
end

 scatter(X,Y)
 axis([-20 250 -20 250])
 

clear all;

