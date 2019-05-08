%t = 0:0.1:10;
%x = exp(-0.2*t).*cos(2*t)
%y = exp(-0.2*t).*sin(2*t);

%plot3(x,y,t, 'r')

clear all
x=[1 0 -1 1]
y=[0.322 0.414 0.505 0.598 0.484 0.44 0.368 0.644 0.828]
z=ones(9,4)
figure
surf(x,y,z)


%h=scatter3([0,0],[0,1],[0,0]);
%for n=1:30
%    set(h,'XData',[0,n],'YData',[0,2*n],'ZData',[0,3*n]);   % 更新数据 
%    pause(0.2);
%    drawnow;
%end

