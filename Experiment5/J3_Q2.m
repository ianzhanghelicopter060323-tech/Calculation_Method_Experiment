clc;
clear;
close all;


% y1' = y2
% y2' = y3
% y3' = y''' = y3/x + 2y2/x^2 + 2y1/x^3 + 10x^3sinx
%% solving domain
xspan = [0.1, 30];
Y0 = [0; 0; 0];

%% ode45 to solve the equation
odefun = @solvef2;
[x, Y] = ode45(odefun, xspan, Y0);

%% plot the figure
figure;
plot(x, Y(:,1));
grid on;
xlabel('x');
ylabel('y');
title('edo45 solution:');
