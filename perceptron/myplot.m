close all;
clear;
clc;

m = 80;
n = 100;
x = zeros(m+n,2);
y = [ones(1, m),-ones(1,n)]

% 要画的直线大概 3(x1) - 2(x2)  + 13 
ind_i = 1;
ind_j = 1;
while ind_i <= m || ind_j <= n
	x1 = rand(1)*100;
	x2 = rand(1)*100;
	target = 3* x1 - 10*x2 + 13;
	if target <-1 && ind_i <= m
		x(ind_i,1) = x1;
		x(ind_i,2) = x2;
		ind_i = ind_i + 1;
	end	
	if target > 1 && ind_j <= n
		x(m + ind_j, 1) = x1;
		x(m + ind_j, 2) = x2;
		ind_j = ind_j + 1;
	end	
end

h = scatter3(x(1:m, 1),x(1:m, 2), ones(1, m),'r')
hold on
h = scatter3(x(m+1:m+n, 1),x(m+1:m+n, 2), -ones(1,n), 'b')

[w,b] = perceptron(x, y, 1);
w
b
hold on
xlim1=0:1:100;
xlim2=0:1:100;
[xlim1 xlim2]=meshgrid(xlim1,xlim2);
z = w(1)*xlim1 + w(2)*xlim2 + b;
h3 = surf(xlim1,xlim2, z)
pause(1)
delete(h3)
xlim3=0:1:100;
xlim4=0:1:100;
[xlim3 xlim4]=meshgrid(xlim3,xlim4);
z = 7*xlim3  -3*xlim4 + 1;
h4 = surf(xlim3,xlim4, z)
pause(1)
delete(h4)

