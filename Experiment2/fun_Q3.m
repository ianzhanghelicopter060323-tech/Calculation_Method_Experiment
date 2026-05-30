function [y] = fun_Q3(x)
% @brief: function to draw a graph
% @param: x vector of x axis
% @returns: y vector of y axis

y = exp(-0.3*x) .* cos(2*x);

end