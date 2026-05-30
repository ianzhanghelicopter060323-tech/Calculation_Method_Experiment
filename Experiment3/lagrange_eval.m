function [y0] = lagrange_eval(X, Y, x0)
% Lagrange插值函数
% X, Y: 已知点
% x0: 插值点
% y0: 插值点对应的函数值


m = length(X);
N = ones(size(X)); % better thatn book provided
y0 = 0;

for i = 1: m
    for j = 1:m
        if j ~= i
            N(i) = N(i) * (x0-X(j))/(X(i)-X(j));
        end
    end

    y0 = y0 + Y(i) * N(i);
end

end