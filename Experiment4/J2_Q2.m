clc;
clear;
close all;


% [a, b] = [0, 1]
a = 0;
b = 1;
f = @f1;

%% integration with function integral()
reustlIntegral = integral(f, a, b); % default precision

disp("integration with function integral(): ");
disp(reustlIntegral);

%% integration with function int()
syms x;
% resultInt_symbol = int(f(x)); % inegration with symbol
resultInt_value = int(f(x), a, b);
resultInt_vpaValue = vpa(resultInt_value); % default precision

% disp(resultInt_symbol);
disp('integration with int (sybolic solution): ');
disp(resultInt_value);
disp('integration valuewith int and vpa(default precision): ');
disp(resultInt_vpaValue);

