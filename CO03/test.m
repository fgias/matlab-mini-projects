x=4;y=4; deltat=10;
theta=0; v=0.0036;
vx=v*cos(theta); vy=v*sin(theta);
G=9.63e-7; Me=83.3; Mm=1; Rm=1; Re=3.7;
xe=0; ye=0; xm=0; ym=222;
t=0

while t<6000

    scatter(x,y)
    axis([-10 10 -10 10])
    hold on
    
    ax=-G*Me*(x)/(sqrt(x^2+y^2))^3;
    ay=-G*Me*(y)/(sqrt(x^2+y^2))^3;
    
    vx=vx+deltat*ax;
    vy=vy+deltat*ay;
    
    x=x+deltat*vx
    y=y+deltat*vy
    t=t+deltat
    
end