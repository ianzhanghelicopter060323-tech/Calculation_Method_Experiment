function [E] = MendEucler(f, a, b, N, ya)
    % f: function handle of f(x, y)
    % a, b: [a, b]
    % N: numbers domain be divided
    % ya: initial value

    % E: matrix of X and Y

    h = (b - a)/N;
    x = a : h : b;
    y = zeros(size(x));
    y(1) = ya;

    for n=1:N
        yp = y(n) + h*f(x(n), y(n));
        yc = y(n) + h*f(x(n+1), yp);
        y(n+1) = (yp+yc)/2;
    end
    E=[x', y'];
end