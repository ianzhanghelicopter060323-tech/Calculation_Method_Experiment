function dYdx = solvef2(x, Y)
    % dYdx: matrix to store y', y'', y'''

    % y1' = y2
    % y2' = y3
    % y3' = y''' = y3/x + 2y2/x^2 + 2y1/x^3 + 10x^3sinx
    
    
    dYdx = zeros(3,1);

    dYdx(1) = Y(2); % y' 
    dYdx(2) = Y(3); % y ''
    dYdx(3) = Y(3)/x - 2*Y(2)/x^2 + 2*Y(1)/x^3 + 10*x^3*sin(x); % y '''
end