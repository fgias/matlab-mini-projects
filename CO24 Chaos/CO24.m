%CO24 
%Chaos
%Runge-Kutta Methods
%Fotios Ioannis Giasemis

clear;
a=10; b=8/3; dt=0.05; t=0;

n=input('Number of steps: n=');
disp('Coordinates {y} of the starting point:')
y1=input('y1=');
y2=input('y2=');
y3=input('y3=');
r=input('Value of r: r=');

f1=@(y1,y2) a*(y2-y1);
f2=@(y1,y2,y3) r*y1-y2-y1*y3;
f3=@(y1,y2,y3) y1*y2-b*y3;

Y1(1,1)=y1;
Y2(1,1)=y2;
Y3(1,1)=y3;

for i=2:n
    
    f1_0=f1(y1,y2);
    f2_0=f2(y1,y2,y3);
    f3_0=f3(y1,y2,y3);
    
    f1_1=f1(y1+f1_0*dt/2,y2+f2_0*dt/2);
    f2_1=f2(y1+f1_0*dt/2,y2+f2_0*dt/2,y3+f3_0*dt/2);
    f3_1=f3(y1+f1_0*dt/2,y2+f2_0*dt/2,y3+f3_0*dt/2);
    
    f1_2=f1(y1+f1_1*dt/2,y2+f2_1*dt/2);
    f2_2=f2(y1+f1_1*dt/2,y2+f2_1*dt/2,y3+f3_1*dt/2);
    f3_2=f3(y1+f1_1*dt/2,y2+f2_1*dt/2,y3+f3_1*dt/2);
    
    f1_3=f1(y1+f1_2*dt,y2+f2_2*dt);
    f2_3=f2(y1+f1_2*dt,y2+f2_2*dt,y3+f3_2*dt);
    f3_3=f3(y1+f1_2*dt,y2+f2_2*dt,y3+f3_2*dt);
    
    y1=y1+dt*(f1_0+2*f1_1+2*f1_2+f1_3)/6;
    y2=y2+dt*(f2_0+2*f2_1+2*f2_2+f2_3)/6;
    y3=y3+dt*(f3_0+2*f3_1+2*f3_2+f3_3)/6;
    
    Y1(1,i)=y1;
    Y2(1,i)=y2;
    Y3(1,i)=y3;
    
    t=t+dt;
end

T=linspace(0,t,n);
figure
subplot(1,2,1)
plot(T,Y1)

subplot(1,2,2)
plot(Y2,Y3)

clc; clear;