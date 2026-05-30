function [x, k] = Jacobimethod(A, b, x0, N, e)
    % x: output of the solution, a vector
    % k: output of how many time it iterates, a value

    % A: input of coefficient matrix
    % b: input of right-side value vector
    % x0: input of initial points
    % N: input of maximum iteration times
    % e: input of error control

    %% initialize some values
    n = length(A);
    x1 = x0;          % a vactor: x1 -> x(k)
    x2 = zeros(n, 1); % a vector: x2 -> x(k+1)
    r = max(abs(b - A*x1)); % error control initialize -- if lucky enough r <= e, need no loop
    k = 0; % iteration times count
    
    %% main loop to iterate
    while r > e
        for i=1:n % row loop for sum
            sum = 0;
            for j=1:n % column loop for sum
                if i ~= j
                    sum = sum + A(i, j)*x1(j);
                end
            end
            x2(i) = (b(i) - sum)/A(i, i); % iterates to renew x2
        end
        r = max(abs(x2-x1)); % renew r: max|x(k+1) - x(k)|
        x1 = x2; 
        k = k+1;
        
        if k > N
            disp('ERROR! Jacobi iteration FAILED');
            x = x2; % envalue x to return 
            return ;
        end
    end

    %% envalue to return
    x = x2; 
end