function [u] = kmeans(x, k)
	%输入特征x， 聚类成k类
	[xrow, xcol] = size(x);
	a = max(x(:))
	%随机生成k个质心
	u = rand(k, xcol)*a
	lastDist = inf;
	udist = inf;
	while true
		lastDist  = udist;
		udist = 0;
		% 给每个xi 打标记 属于那一类, 并计算 udist
		mark = zeros(1,xrow);
		xrow
		for ind_i = 1:xrow
			dist_temp = inf;
			for ind_k = 1:k
				oneDist = calcDistance(u(ind_k,:), x(ind_i,:));
				udist = udist + oneDist;
				if (oneDist <= dist_temp)
					mark(ind_i) = ind_k;
					dist_temp = oneDist;
				end 
			end
		end

		% 根据打完mark的数据重新确定质心
		u = zeros(k, xcol);
		mark
		for ind_k = 1:k
			n = 0;
			for ind_i = 1:xrow
				if (mark(ind_i) == ind_k)
					u(ind_k,:)  = u(ind_k,:) + x(ind_i,:);
					n = n + 1;
				end
			end
			if (n != 0)
				u(ind_k,:) = u(ind_k,:)/n
			end
		end
		if abs(udist -lastDist) < 10	%收敛结束条件
			udist
			lastDist
			break;
		end
	end
end


function [distance] = calcDistance(x, y)
	% 求欧式距离
	distance = sqrt((x-y)*(x-y).');
end