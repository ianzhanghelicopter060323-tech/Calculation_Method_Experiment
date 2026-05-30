clc;
clear;
close all;


%% generate the figure of fun4
x = linspace(-5, 5, 114514);
y = fun4(x);

figure;
plot(x, y, "r");

grid on;
axis([-5, 5, -40, 40]);
title('figure of \surd{(x^2+1)} - tan(x)') % just a little adustment to make the function clearer :)

%% Newton-Mend 
epsilon_newton = 1e-6; % precesion control
f3 = @fun3;

% Newton-mend initial points
x1 = -5;
x2 = -4;
x3 = -1.2;
x4 = 2.0;

[X1, k1] = Mendnewton(f3, x1, epsilon_newton);
[X2, k2] = Mendnewton(f3, x2, epsilon_newton);
[X3, k3] = Mendnewton(f3, x3, epsilon_newton);
[X4, k4] = Mendnewton(f3, x4, epsilon_newton);

disp('find four roots in [-5, 5] (epsilon = 1e-6) with Mend-Newton: ');
disp(X1(k1));
disp(X2(k2));
disp(X3(k3));
disp(X4(k4));

% no-outcome
epsilon_newton1 = 1e-14;

disp('find roots from x0=1.572 (with epsilon = 1e-14) with Mend-Newton: ');
[X, k] = Mendnewton(f3, 1.572, epsilon_newton1);
disp (X(k));

