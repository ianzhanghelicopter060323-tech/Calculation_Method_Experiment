function  [y, dy] = fun3(x)
    % for Newton-men function
    
    y = sqrt(x .^ 2+1) - tan(x);
    
    % define symbole variable
    syms x1;
    y1 = sqrt(x1 .^ 2+1) - tan(x1);
    dy1 = diff(y1);

    dy = subs(dy1, x1, x); % replace x1 in dy1 with x
end