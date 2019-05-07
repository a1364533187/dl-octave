t=[0]
m=[sin(t);cos(t)]
p = plot(t,m,...
   'MarkerSize',5);
x=-1.5*pi;
axis([x x+2*pi -1.5 1.5]);
grid on;


for i=1:50
    t=[t 0.1*i];                   %Matrix 1*(i+1)
    m=[m [sin(0.1*i);cos(0.1*i)]]; %Matrix 2*(i+1)
    set(p(1),'XData',t,'YData',m(1,:))
    set(p(2),'XData',t,'YData',m(2,:))    
    drawnow
    x=x+0.1;    
    axis([x x+2*pi -1.5 1.5]);
    pause(0.5);
end