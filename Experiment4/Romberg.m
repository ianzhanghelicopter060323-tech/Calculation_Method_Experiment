function [quad, n] = Romberg(f, a, b, epsilon)
% f: function handle
% a, b: domain in which integration operated
% epsilon: precision

% quad: integration result with Romberg
% n: times function f is called


h = b - a; % size of the domain
n = 0;

R(1, 1) = (f(a) + f(b)) / 2; % initialize Romberg table
n = n + 2; % 2 calls

row = 0; % row in Romberg table
M = 1; % number of values to get T1, T2, ···
err = 1; % initialized large to enter the loop

% outer loop for row moving
while err > epsilon
    row = row + 1; % move to next row
    S = 0; % S = h/2 * sum_{i=0}^{M-1} f(x_{i+1/2})

    % inner loop 1: for bbct
    for i = 0 : M-1
        x = a + h * (i + 1/2);
        S = S + f(x);
        n = n + 1; % 1 call
    end
    R(row+1, 1) = 1/2 * R(row, 1) + h/2 * S; % T_{2n} = 1/2 T_n + h/2 * sum

    % inner loop 2: for loosing
    for j = 1 : row
        R(row+1, j+1) = R(row+1, j) + (R(row+1, j) - R(row, j)) / (4^j - 1);
    end

    % error estimate
    err = abs(R(row+1, row) - R(row+1, row+1));
    M = M * 2;
    h = h / 2;
end
    quad = R(row+1, row+1);
end