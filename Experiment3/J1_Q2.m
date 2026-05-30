clc;
clear;
close all;


X = [0.4, 0.5, 0.6, 0.7, 0.8];
Y = [-0.916291,-0.693147, -0.510826, -0.356675, -0.223144];

x_ln = linspace(0.5, 0.6, 100); % points for precise y=lnx
x0 = linspace(0.5, 0.6, 11); % 10 equally devided points on [0.5, 0.6] for interpolation

%% Curve of lnx
y0_ln = log(x_ln);

%%  Piecewise Linear Interpolation
y0_linear = interp1(X, Y, x0, 'linear');

%% Peicewise Cubic Interpolation
y0_cubic = interp1(X, Y, x0, 'pchip');

%% Cubic Spline Interpolation
y0_spline = interp1(X, Y, x0, "spline");

%% Figure generate
figure;
plot(x_ln, y0_ln, 'k-'); % color: black  line style: -
hold on;
plot(x0, y0_linear, 'r+'); % color: red  line style: +
plot(x0, y0_cubic, 'm*'); % color: omagenta  line style: *
plot(x0, y0_spline, 'bs'); % color: blue  line style: 'rectangle'
hold off;

grid on;
axis([0.5 0.6 -0.7 -0.45]);
legend("log", "linear", "cubic", "spline");
