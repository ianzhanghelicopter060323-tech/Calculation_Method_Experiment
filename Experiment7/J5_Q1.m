clc;
clear;
close all;


%% pre-defination
% coeffcient matrix
A = [
    -4, 1, 1, 1;
    1, -4, 1, 1;
    1, 1, -4, 1;
    1, 1, 1, -4;
];

% right-side vector
b = [
    1;
    1;
    1;
    1;
];

% initial points vector
x0 = [
    0;
    0;
    0;
    0;
];

N = 100; % set max iteration times 100
epsilon = 1e-5; % set error 1*10^{-5}
% define w for SOR
w1 = 1;
w2 = 1.25;
%% Jacobi method iteration
[x_Jacobi, k_Jacobi] = Jacobimethod(A, b, x0, N, epsilon);

disp('Jacobi: ');
disp('x= ');
disp(x_Jacobi);
disp('k= ');
disp(k_Jacobi);

%% SOR method iteration
[x_SOR1, k_SOR1] = SORmethod(A, b, x0, N, epsilon, w1); % w1 = 1
[x_SOR2, k_SOR2] = SORmethod(A, b, x0, N, epsilon, w2); % w2 = 1.25

disp('SOR method with w = 1');
disp('x= ');
disp(x_SOR1);
disp('k= ');
disp(k_SOR1);

disp('SOR method with w = 1.25');
disp('x= ');
disp(x_SOR2);
disp('k= ');
disp(k_SOR2);