function [X, k] = Mendnewton(f, x0, e)
    % X: matrix for x till goal-x is finded
    % k: iteration steps

    % f: fun3, which is, function be calculated returns to [f(x), f'(x)]
    % x0: goal-x
    % e: error

    X(1) = x0;
    [f1, ~] = f(x0); 
    k = 0; % times of iteration

    while abs(f1) > e             % precesion control
        
        % ========if k be larger than 20, iteration FIALED============
        if k >= 20
            disp('ITERATION FAILED! the equation has no solution or original value with too much offset');

            % returns be like what they should int the latest loop
            break;
        end
        % ============================================================

        k = k + 1;
        u = 1;                    % mend-factor, every iteration from 1/2, 1/4, ····
        [f1, df1] = f(X(k));      % find f(xk), f'(xk)

        X(k+1) = X(k) - u*f1/df1; % Newton-mend with u=1, find xk+1
        [f2, ~] = f(X(k+1));      % find f(xk+1), f'(xk+1)

        n = 0;                    % count times of the inner-while
        while abs(f2) >= abs(f1)      % judge if u need Bi-divide
            % ============ judge if n be larger than 20, say mend failed ===========
            if n >= 20
                disp('MEND FAILED! original value with too much offest, please pick a new one');
                return ;
            end
            % ======================================================================

            n = n + 1;
            u = u/2;
            X(k+1) = X(k) - u*f1/df1; % recalculate xk+1 based on new u
            [f2, ~] = f(X(k+1));      % recalculate f(x+1), f'(xk+1)
            
        end
    end
end