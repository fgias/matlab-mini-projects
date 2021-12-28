[x,y]=meshgrid(-2:.1:2);

j=1;

for i=-2.5:.1:2.5
    
    z1=cos(i*x.*y);
    
    fig=figure;

    surf(x,y,z1)
    zlim([-1 1])
 
    saveas(fig,sprintf('FIG%d.png',j))
    j=j+1;
    close
end
    