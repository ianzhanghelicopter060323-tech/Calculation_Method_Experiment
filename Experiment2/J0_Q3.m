clc;
clear;
close all;


x = linspace(0, 6, 100);
y = fun_Q3(x);

figure;
plot(x, y, "red-");
grid on;

xlabel("x[s]");
ylabel("y[m]");

title("y=e^{0.3x}cos(2x)");

legend("fun\_Q3");

