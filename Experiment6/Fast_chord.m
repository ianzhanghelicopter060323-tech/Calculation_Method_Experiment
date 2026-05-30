function [X, k] = Fast_chord(f, x1, x2, e)
    % X: matrix of x, the last is the root to find
    % k: iteration steps

    % f: function handler to find roots 
    % x1: one initial value
    % x2: two initial value
    
    max_n = 20; % loop time control

    X(1) = x1;
    X(2)= x2;
    k = 2; 

    n=0;
    while abs(X(k) - X(k-1)) > e
        if n >= max_n
            disp('ERROR! Fst chord iteration FAILED because loop time reach limit');
            return ;
        end 
        X(k+1) = X(k) - (X(k) - X(k-1))*f(X(k))/(f(X(k)) - f(X(k-1)));
        k = k + 1;
        n = n + 1;
    end
end