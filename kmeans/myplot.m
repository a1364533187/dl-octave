clear;
clc;
close all;

x = zeros(300, 2);
n = 1;
while n <= 300
	x1 = rand(1) * 100;
	x2 = rand(1) * 100;
	target = (x1-5)*(x1-5) + (x2-5)*(x2-5);
	if (x1-5)*(x1-5) + (x2-5)*(x2-5) <5
		x(n, :) = [x1, x2];
		n = n + 1;
	end
	if (x1-15)*(x1-15) + (x2-15)*(x2-15) <5
		x(n, :) = [x1, x2];
		n = n + 1;
	end
	if (x1-5)*(x1-5) + (x2-15)*(x2-15) <5
		x(n, :) = [x1, x2];
		n = n + 1;
	end
end

scatter(x(:, 1), x(:, 2));

[u] = kmeans(x, 3)
hold on
scatter(u(:,1), u(:,2),'r')