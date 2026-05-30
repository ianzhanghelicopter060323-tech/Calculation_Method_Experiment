function [y] = fun_Q2(x)
% @brief: function in J0_Q2
% @param: a vector x, or just one sole value
% @returns: a vector y, or just a sole value

y = 2*sin(x) + cos(x.^2) + exp(-x) + log10(x.^3) + log(x);

end