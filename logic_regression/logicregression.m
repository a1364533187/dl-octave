function [w] = logicregression(x, y, stepSize, iter)
	[xrow, xcol] = size(x); 
	w = ones(1, xcol);
	n = 1;
	while n <=iter
		for ind = 1:xrow
			grad = calc_gradient(x(ind, :), y(ind), w);
			w = w - stepSize*grad;
			w
		end
		n = n+1;
	end
end

function [y] = logic(z)
	% 注意 * .* / ./ 区别
	y = 1./(1 + exp(-z));
end


function [grad] = calc_gradient(xi, yi, theta)
	grad  = -(yi*xi*(1/logic(theta*xi.'))-(1-yi)*xi*(1/(1-logic(theta*xi.'))));
end