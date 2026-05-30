function [y0] = aitken_eval(X, Y, x0)
    % Aitkin interpolation function
    % X, Y: points given
    % x0: where to be interpolated
    % y0: value of x0 under interpolation
 
    % P_former = Y; % matrix of former interpolation value(no use, can be deleted)
    P = Y;%  matrix of local interpolation value
    m = length(X);

    for i=1:(m-1) % outer loop stands for layers

         P_former = P; % renew P_former every time inside loop ended
        for j=(i+1):m % inner loop stands for each interval in this layer

            %% Neville interpolation fomula as the book given

            w = (x0 - X(j))/(X(i) - X(j)); % define interpolation opertater

            P(j) = P_former(j)+(P_former(i)-P_former(j)) * w;
           
        end

        % when last two numbers in P is almost the same rest loop is not useful, return 
        if abs(P(m)-P(m-1)) < 10^-6
            y0 = P(m);
            return; 
        end
    end

    % when all the loop finshed, and P(m)<P(m-1)>=10^-6, renturn 
    y0 = P(m);
end
    