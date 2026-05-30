function [x] = Gauss_pivot(A, b)


    n = length(b);
    x = zeros(n, 1);
    
    c = zeros(1, n); % for the use of switching rows of A
    d1 = 0 ;         % for the use of switching rows of b

    %% i for the rows where the main row
    for i=1:n-1
        max = abs(A(i, i)); % assume the one in main row is the column pivot
        m = i;              % where the column pivot is

        % loop to find column pivot
        for j=i+1:n
            if abs(A(j, i)) > max
                max = abs(A(j, i)); 
                m = j;
            end
        end

        % dealing with row-switch-needed situation
        if m ~= i
            % dealing with matrix A
            for k=1:n
                c(k) = A(i, k);
                A(i, k) = A(m, k);
                A(m, k) = c(k);
            end
            
            % dealing with vector b
            d1 = b(i);
            b(i) = b(m);
            b(m) = d1;
        end
        % now A(i, i) is definately the pivot

        % loop for elimination
        for p=i+1:n % p - row to operate elimination
            for q=i+1:n % q - column to operate elination
                A(p, q) = A(p, q) - (A(i, q)*A(p, i)) / A(i, i);
            end
            b(p) = b(p) - (b(i)*A(p, i)) / A(i, i);
            A(p, i) = 0; % column where the pivot is dealing
        end
    end

    %% substituion
    x(n) = b(n) / A(n, n); % last row, last column which is as 'anx = bn', x can be solved

    for i=n-1:-1:1
        sum = 0;
        for j=i+1:n
            sum = sum + A(i, j)*x(j);
        end
        x(i) = (b(i) - sum) / A(i, i);
    end
end