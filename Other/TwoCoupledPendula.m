% TwoCoupledPendula.m
% problem sheet Q1(h); plots oscillation
% of coupled pendula

% set good axes sizes
set(0, 'DefaultTextFontName','Arial')
set(0, 'DefaultAxesFontName','Arial')
set(0, 'DefaultAxesFontSize',14)
set(0, 'DefaultTextFontSize',14)
set(0,'DefaultLineLineWidth',2);
set(0,'DefaultLineMarkerSize',8)



alphap=0.105;
% define \overline{omega}*time
ombart=0:0.02:25; 

% modulation frequency
delomega=((1+2*alphap)^0.5-1)/((1+2*alphap)^0.5+1); % \Delta/\bar{Omega}=(omega_2-omega_1)/(omega_2+omega_1)

% amplitude
D=1.0;

% calculate x, y
x=D*cos(2*pi*delomega*ombart).*cos(2*pi*ombart);
y=D*sin(2*pi*delomega*ombart).*sin(2*pi*ombart);

% calculate envelopes for plotting
xenvelope=D*cos(2*pi*delomega*ombart);
yenvelope=D*sin(2*pi*delomega*ombart);

% plot output
figure; 
set(gcf,'Units', 'centimeters','Position', [3 3 25 15]);
hold on
xpend=subplot(2,8,1:5)
plot(ombart,x,'-r')
hold on
plot(ombart,xenvelope,'--k')
plot(ombart,-xenvelope,'--k')
xlabel('0.5(\omega_1+\omega_2)t/2\pi')
ylabel('x','Rotation',0)
%legend('x','Envelope')
axis([ombart(1) ombart(end) -D*1.1 D*1.1])

ypend=subplot(2,8,9:13);
plot(ombart,y,'-b')
hold on
plot(ombart,yenvelope,'--k')
plot(ombart,-yenvelope,'--k')
xlabel('0.5(\omega_1+\omega_2)t/2\pi')
ylabel('y','Rotation',0)
%legend('y','Envelope')
axis([ombart(1) ombart(end) -D*1.1 D*1.1])

% script for movie;
l=20; % length for converting x to angles
theta1=asin(x/l); % small angle approx of x=lsin(theta)
theta2=asin(y/l); % small angle approx of y=lsin(theta)

vert1=[-1.5 0]; % (x,y) co-ordinates of pendulum 1 vertex
vert2=[1.5 0]; % pendulum 2 vertex

jj=1;
bob1=vert1+l*[sin(theta1(jj)) -cos(theta1(jj))];
bob2=vert2+l*[sin(theta2(jj)) -cos(theta2(jj))];

%figure;
pendmov=subplot(2,8,[7:8,15:16])
axis([-3.0 3.0 -(l+1) 0.0])
hold on
% plot pendlum 1
plot(vert1(1),vert1(2),'sr')
line([vert1(1) bob1(1)]',[vert1(2) bob1(2)]' ,'Color','r')
plot(bob1(1),bob1(2),'ok','MarkerSize',16)
% plot pendlum 2
plot(vert2(1),vert2(2),'sb')
line([vert2(1) bob2(1)]',[vert2(2) bob2(2)]' ,'Color','b')
plot(bob2(1),bob2(2),'ok','MarkerSize',16)
% plot the spring
line([bob1(1) bob2(1)]',[bob1(2) bob2(2)]','Color','k')


% plot time marker
zvert=-1.1:0.1:1.1;
tvert=ones(size(zvert))*ombart(jj)
xpend;
gca;
timeind1=plot(tvert,zvert,'--m');
%timeind1=line([-1.1 1.1],[ombart(jj) ombart(jj)],'Color','k','Linewidth',1)
ypend;
gca;
timeind2=plot(tvert,zvert,'--m')

pause(0.01)
%break
for jj=2:1:length(ombart)
    
    cla(pendmov); % clear the axes
    % calculate new bob positions
    bob1=vert1+l*[sin(theta1(jj)) -cos(theta1(jj))];
    bob2=vert2+l*[sin(theta2(jj)) -cos(theta2(jj))];
    
    % repeat plotting
    axis([-3.0 3.0 -(l+1) 0.0])
hold on
% plot pendlum 1
plot(vert1(1),vert1(2),'sr')
line([vert1(1) bob1(1)]',[vert1(2) bob1(2)]' ,'Color','r')
plot(bob1(1),bob1(2),'ok','MarkerSize',16)
% plot pendlum 2
plot(vert2(1),vert2(2),'sb')
line([vert2(1) bob2(1)]',[vert2(2) bob2(2)]' ,'Color','b')
plot(bob2(1),bob2(2),'ok','MarkerSize',16)
% plot the spring
line([bob1(1) bob2(1)]',[bob1(2) bob2(2)]','Color','k')


% also do some shading on panels for x(t), y(t) to show progress
% use transparency
 xpend;
 %gca;
 fillx=fill([ombart(jj-1) ombart(jj) ombart(jj) ombart(jj-1)],[-1.1 -1.1 1.1 1.1],'w','FaceColor',[0.875 0.875 0.875],'EdgeColor','none','Parent',xpend);
 hold off
 alpha(fillx,0.7)
 hold on
 
 ypend;
 %gca;
 %filly=fill([ombart(jj-1) ombart(jj)],[-1.1 1.1],'w','FaceColor',[0.875 0.875 0.875],'EdgeColor','none');
 filly=fill([ombart(jj-1) ombart(jj) ombart(jj) ombart(jj-1)],[-1.1 -1.1 1.1 1.1],'w','FaceColor',[0.875 0.875 0.875],'EdgeColor','none','Parent',ypend);
 hold off
 alpha(filly,0.7)
 hold on
 
% plot time marker


% zvert=-1.1:0.1:1.1;
% tvert=ones(size(zvert))*ombart(jj)
% xpend;
% gca
% delete(timeind1)
% timeind1=plot(tvert,zvert,'--m','Linewidth',1)
% %timeind1=line([-1.1 1.1],[ombart(jj) ombart(jj)],'Color','k','Linewidth',1)
% ypend;
% delete(timeind2)
% timeind2=plot(tvert,zvert,'--m','Linewidth',1)


pause(0.01)

if(jj==1e6) break
else
end


end
