clear;
clc;
close all;

m1 = 40;
m2 = 40;
n = 1;

x = ones(m1+m2, n);
y = ones(m1+m2, 1);
ylim = ones(m1+m2, 1);

% 要画的直线大概 3(x1) - 2(y) 
ind_i = 1;
ind_j = 1;
while ind_i <= m1 || ind_j <= m2
	x1 = rand(1)*3;
	y1 = rand(1)*3;
	target = 2* x1 - y1;
	if target > 1  && ind_i <= m1
		x(ind_i,1) = x1;
		y(ind_i,1) = 1;
		ylim(ind_i,1) = y1;
		ind_i = ind_i + 1;
	end	
	if target < -1 && ind_j <= m2
		x(m1 + ind_j, 1) = x1;
		y(m1 + ind_j,1) = 0;
		ylim(m1 + ind_j,1) = y1;
		ind_j = ind_j + 1;
	end	
end

scatter(x(1:m1,1), ylim(1:m1))
hold on
scatter(x(m1:m1+m2), ylim(m1:m1+m2), 'r')
[w] = logicregression(x, y, 0.001, 1000);

hold on
xlim = linspace(0,3, 20);
plot(xlim, w*xlim, 'b')



