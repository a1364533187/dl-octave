t=0;
m=0;
p = plot(t,m,'*',...
   'MarkerSize',5);
x=-1.5*pi;
axis([x x+2*pi -1.5 1.5]);
grid on;

for i=1:10
    t=0.1*i;       %两个变量均不追加  
    m=sin(0.1*i); 
    set(p,'XData',t,'YData',m)
    x=x+0.1;    
    drawnow
    axis([x x+2*pi -1.5 1.5]);
    pause(0.1);
end