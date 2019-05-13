clear;
clc;
close all;

m = 100;
n = 1;
x = zeros(m, n);
y = zeros(m, 1);
% y = 2x1 - 5x2
ind = 1;
while ind <=m
	x1 = rand(1)*100;
	y1 = rand(1)*100;
	if abs(2*x1 - y1) <= 3
		x(ind, 1) = x1;
		y(ind) = y1;
		ind = ind + 1;
	end
end

h = scatter(x(:, 1), y,'r')

[w] = linearregression(x, y, 0.0001, 10);
w
