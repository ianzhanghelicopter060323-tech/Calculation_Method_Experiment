clc;
clear;
close all;


% integrate in the domain of [0, 1]
a = 0;
b = 1;

f = @f1;

% percision control
epsi4 = 1e-4;
epsi15 = 1e-15;

%% bbct integration
[intResult_bbct_epsi4, callTimes_bbct_epsi4] = bbct(f, a, b, epsi4);
[intResult_bbct_epsi15, callTimes_bbct_epsi15] = bbct(f, a, b, epsi15);

% result and call time display
disp('bcct result(epsi4): ');
disp(intResult_bbct_epsi4);
disp('bcct f called: ');
disp(callTimes_bbct_epsi4);

disp('bcct result(epsi15): ');
disp(intResult_bbct_epsi15);
disp('bcct f called: ');
disp(callTimes_bbct_epsi15);

%% Romberg integration
[intResult_Romberg_epsi4, callTimes_Romberg_epsi4] = Romberg(f, a, b, epsi4);
[intResult_Romberg_epsi15, callTimes_Romberg_epsi15] = Romberg(f, a, b, epsi15);

% result and call time display
disp('Romberg result(epsi4): ');
disp(intResult_Romberg_epsi4);
disp('Romberg f called: ');
disp(callTimes_Romberg_epsi4);

disp('Romberg result(epsi15): ');
disp(intResult_Romberg_epsi15);
disp('Romberg f called: ');
disp(callTimes_Romberg_epsi15);
