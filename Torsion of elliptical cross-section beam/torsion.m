% Elasticity: Theorey, Applications and Numerics, 4e Elsevier
% M.H. Sadd
% 3D plot of warping displacement surface for elliptical cross-section under torsion
clc; clear all;
a=1; b=0.5;
[t, r]=meshgrid(0:pi/20:2*pi, 0:0.05:1);
x=a*r.*cos(t);
y=b*r.*sin(t);
w=-x.*y;
surfc(x,y,w);
colormap gray;
axis([-1 1 -1 1])
view(20,10)
