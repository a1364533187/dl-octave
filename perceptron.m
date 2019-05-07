function [w, b] = perceptron(x, y, stepSize)
	[row, col] = size(x);
	w = zeros(1, col);
	b = 0;	%b initial  0
	errorFound = true;
	while errorFound == true
		errorFound = false;
		for ind = 1:row
			% B=A.' 是转置
			% B=A'  是共轭转置
			temp_y = w*x(ind, :).' + b;
			if sign(temp_y) ~= y(ind)
				errorFound = true;
				w = w + stepSize*y(ind)*x(ind, :);
				b = b + stepSize*y(ind);
				w
				b
			end
		end
	end
end