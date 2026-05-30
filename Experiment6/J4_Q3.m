clc;
clear;
close all;


f4 = @fun4;

% initial points and domain(for fzero)
x1 = -5;
domain1 = [-5 -4.8];

x2 = -4;
domain2 = [-2.2 -1.8];

x3 = -1.2;
domain3 = [-1.5 1.5];

x4 = 4.0; %  value test: let x4 = 4
domain4 = [4.2 4.7];

%% fzero finding solution
x1_fzero = fzero(f4, domain1);
x2_fzero = fzero(f4, domain2);
x3_fzero = fzero(f4, domain3);
x4_fzero = fzero(f4, domain4);

disp('finding roots using fzero(): ');
disp(x1_fzero);
disp(x2_fzero);
disp(x3_fzero);
disp(x4_fzero);

%% fsolve find solution
x1_fsolve = fsolve(f4, x1);
x2_fsolve = fsolve(f4, x2);
x3_fsolve = fsolve(f4, x3);
x4_fsolve = fsolve(f4, x4);

disp('finding roots using fsolve(): ');
disp(x1_fsolve);
disp(x2_fsolve);
disp(x3_fsolve);
disp(x4_fsolve);

%% vpasolve find solution
syms x;

% syntax copying from MATLAB datasheet: https://ww2.mathworks.cn/help/releases/R2024b/symbolic/sym.vpasolve.html?#bt51etx-1
equLeft = sqrt(x .^ 2+1) - tan(x);
equRight = 0;

% vapsolve solving equation with guessing values
x1_vpasolve = vpasolve(equLeft == equRight, x, x1);
x2_vpasolve = vpasolve(equLeft == equRight, x, x2);
x3_vpasolve = vpasolve(equLeft == equRight, x, x3);
x4_vpasolve = vpasolve(equLeft == equRight, x, x4);

disp('finding roots using vpasolve(): ');
disp(x1_vpasolve);
disp(x2_vpasolve);
disp(x3_vpasolve);
disp(x4_vpasolve);