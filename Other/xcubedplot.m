x=[-2:.1:2];
plot(x,x.^3)
grid on,hold on, axis equal
a=3^-.25
plot(x,3*a^2*x-2*a^3)
plot(x,-1/(3*a^2)*(x+a)-a^3)
plot(x,3*a^2*x+2*a^3)