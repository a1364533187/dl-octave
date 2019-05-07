xlim1=0:1:100;
xlim2=0:1:100;
% [xlim1 xlim2]=meshgrid(xlim1,xlim2);
z = w(1)*xlim1 + w(2)*xlim2 + b;
% surf(xlim1,xlim2, z)
plot3(xlim1, xlim2, z)

%h=scatter3([0,0],[0,1],[0,0]);
%for n=1:30
%    set(h,'XData',[0,n],'YData',[0,2*n],'ZData',[0,3*n]);   % 更新数据 
%    pause(0.2);
%    drawnow;
%end

