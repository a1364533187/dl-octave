close all;
clear;
clc;

m = 130;
n = 100;
x = zeros(m+n,1);
y = [ones(1, m),-ones(1,n)];

% 要画的直线大概 3(x1)  - 15
ind_i = 1;
ind_j = 1;
while ind_i <= m || ind_j <= n
	x1 = rand(1)*10;
	target = 3* x1 -15;
	if target <-1 && ind_i <= m
		x(ind_i,1) = x1;
		ind_i = ind_i + 1;
	end	
	if target > 1 && ind_j <= n
		x(m + ind_j, 1) = x1;
		ind_j = ind_j + 1;
	end	
end

h = scatter(x(1:m, 1), ones(1, m),'r')
hold on
h = scatter(x(m+1:m+n, 1), -ones(1,n), 'b')

[w,b] = perceptron(x, y, 1);
w
b
xlim = linspace(1,10,50);

plot(xlim, w*xlim+b)
