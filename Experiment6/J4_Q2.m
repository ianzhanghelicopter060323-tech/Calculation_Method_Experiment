clc;
clear;
close all;


%% fast_chord find roots
epsilon_chord = 1e-6; % precesion control
f4 = @fun4;

% fast-chord
[X1, k1] = Fast_chord(f4, -5.2, -4.8, epsilon_chord);
[X2, k2] = Fast_chord(f4, -2.2, -1.8, epsilon_chord);
[X3, k3] = Fast_chord(f4, 0.7, 1.2, epsilon_chord);
[X4, k4] = Fast_chord(f4, 4.45, 4.55, epsilon_chord);

disp('find four roots in [-5, 5] (epsilon = 1e-6) with Fast-chord: ');
disp(X1(k1));
disp(X2(k2));
disp(X3(k3));
disp(X4(k4));