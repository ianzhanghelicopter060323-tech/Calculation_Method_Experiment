function [T, n] = bbct(f, a, b, epsilon)
% f: function handler
% a, b: integerate in the domain of [a, b]
% epsilon: accuracy using to get out the loop

% T: value of integration
% n: times f are called

    h = b - a; % domain size
    % fa = f(a); % function value at x=a
    % fb = f(b); % function value at x=b
    n = 0; 

    % envalued T1 and T2. FIRST integrattion
    T1 = h/2 * (f(a) + f(b));
    T2 = T1/2 + h/2 * f(a + h/2);
    n = n + 3; % f(a), f(b), f(a+h/2) 3 calls

    % T_2n = 0.5T_n + 0.5h{sum^{n-1}_{i=0}f(x_{i+1/2})}
    % outer loop: calculte total sum
    while abs(T2 - T1) >= epsilon
        h = h/2;
        T1 = T2;
        S = 0; % for sum in T2
        x = a + h/2;

        % inner loop: calculate T2
        while x < b
            S = S + f(x);
            n = n + 1; % 1 calls
            x = x + h;
        end
        T2 = T1/2 + h/2 * S;
    end
    T = T2;
end