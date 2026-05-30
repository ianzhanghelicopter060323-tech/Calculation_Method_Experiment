clc;
clear;
close all;


% create a zero matrix
A = zeros(7, 10);

% element fixing
A(1, 10) = 5;
A(2, 1) = 1;
A(3, 2) = 3;
A(4, 3) = 1;
A(4, 5) = 1;
A(6, 8) = 2;

% martix A output
disp(A);
