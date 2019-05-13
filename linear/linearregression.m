function [w] = linearregression(x, y, stepSize, iter)
	[xrow, xcol] = size(x);
	[yrow, ycol] = size(y);

	if ycol ~= 1 ||  xrow ~= yrow
		error('xrow is not equal yrow');
	end

	% initial w
	w = ones(1, xcol);
	n = 1;
	grad_break = false;
	while n < iter
		for ind = 1:xrow
			grad = calc_gradient(x(ind, :), y(ind), w);
			w = w - stepSize*grad;
			if abs(grad) <= 0.01
				grad_break = true;
				break;
			end
		end
		n = n + 1;
		if grad_break == true
			break;
		end
	end
end

function [grad] = calc_gradient(xi, yi, theta)
	grad = theta.'*xi*xi- xi * yi
end