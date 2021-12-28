[x,y]=meshgrid(-2:.1:2);

for i=-2.5:.01:2.5
    
    z1=cos(i*x.*y);
    z2=sin(i*x.*y);
    
    subplot(1,2,1)
    surf(x,y,z1)
    zlim([-1 1])
    
    subplot(1,2,2)
    surf(x,y,z2)
    zlim([-1 1])
    
   
    
    pause(.001);
end
    