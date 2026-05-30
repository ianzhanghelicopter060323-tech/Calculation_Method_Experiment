clc;
clear;
close all;


% point to be interpolated
x0 = 0.54;
%% Lagrange Linear Interpolation
X_linear = [0.5, 0.6];
Y_linear = [-0.693147, -0.510826];

y0_lagrange_linear = lagrange_eval(X_linear, Y_linear, x0);

disp('Lagerange linear interpolation ln(0.54) = ');
disp(y0_lagrange_linear);

%% Lagrange Bianry Interpolation
X_binary = [0.4, 0.5, 0.6];
Y_binary = [-0.916291,-0.693147, -0.510826];

y0_lagrange_binary = lagrange_eval(X_binary, Y_binary, x0);

disp(' Lagrange binary interpolation ln(0.54) = ');
disp(y0_lagrange_binary);

%% Lagrange Cubic interpolation
X_cubic = [0.4, 0.5, 0.6, 0.7];
Y_cubic = [-0.916291,-0.693147, -0.510826, -0.356675];

y0_lagrange_cubic = lagrange_eval(X_cubic, Y_cubic, x0);

disp('Lagrange cubic interpolation ln(0.54) = ');
disp(y0_lagrange_cubic);

%% Neville cubic interpolation
% X_cubic, Y_cubic has been defined fomer

y0_neville_cubic = neville_eval(X_cubic, Y_cubic, x0);

disp('Neville cubic interpolation ln(0.54) = ');
disp(y0_neville_cubic);

%% Aitken cubic interpolation
% X_cubic, Y_cubic has been defined fomer
y0_aitken_cubic = aitken_eval(X_cubic, Y_cubic, x0);

disp('Aitken cubic interpolation ln(0.54) = ');
disp(y0_aitken_cubic);