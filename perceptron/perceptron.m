function [w, b] = perceptron(x, y, stepSize)
	[row, col] = size(x);
	[yrow, ycol] = size(y);
	if row ~= ycol && ycol == 1
		error("row (x) must equal col (y) and col (x) must equal row (y)")
	end
	w = zeros(1, col);
	b = 0;	%b initial  0
	errorFound = true;
	while errorFound == true
		errorFound = false;
		for ind = 1:row
			% B=A.' 是转置
			% B=A'  是共轭转置
			% w * x.' 算的内积
			temp_y = w*x(ind, :).' + b;
			if sign(temp_y) ~= y(ind)
				errorFound = true;
				w = w + stepSize*y(ind)*x(ind, :);
				b = b + stepSize*y(ind);
				hold on
				xlim1=0:1:100;
				xlim2=0:1:100;
				
				pause(0.2)
				delete(h)
			end
		end
	end
end