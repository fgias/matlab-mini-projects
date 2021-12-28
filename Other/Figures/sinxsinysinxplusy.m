[x,y]=meshgrid(0:.01:pi);
z=sin(x).*sin(y).*sin(x+y);
mesh(x,y,z)