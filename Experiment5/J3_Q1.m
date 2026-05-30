clc;
clear;
close all;


%% differential equation
% y' = x^2 - y
f = @fun3_Q2;

% [0, 1]
a = 0;
b = 1;

% y(0) = 1
ya = 1;

% h = (b-a)/N
h = 0.1;
N = (b-a)/h;
%% MendEucler solving equation
E = MendEucler(f, a, b, N, ya);
disp('MendEucler:');
disp(E);

%% Rungkuta4 solving equation
R = Rungkuta4(f, a, b, N, ya);
disp('Rung-Kutta:');
disp(R);

%% plot figure
x = linspace(a, b, 100);
f2 = -exp(-x) + x.^2 -2.*x + 2;

figure;
subplot(2, 1, 1);
plot(x, f2);
hold on;
plot(E(:, 1), E(:, 2),'*r');

grid on;
xlabel('x');
ylabel('y');
legend('exact solution', 'MendEucler');
axis([0 1 0.5 1]);
title('dy/dx = x^2 - y');


subplot(2, 1, 2);
plot(x, f2);
hold on;
plot(R(:, 1), R(:, 2),'*r');

grid on;
xlabel('x');
ylabel('y');
legend('exact solution', 'Rung-Kutta');
axis([0 1 0.5 1]);
title('dy/dx = x^2 - y');