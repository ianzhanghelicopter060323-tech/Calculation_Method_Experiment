clc;
clear;
close all;


theta = linspace(0, 2*pi, 10000); % [0, 90] 
theta0 = 0;
theta30 = pi/6;
theta60 = pi/3;
theta90 = pi/2;

r = 35; % mm
l = 255; % mm
omega = 3.60; % rad/s


%% s, v, a
s = -r .* sin(theta); % mm
s0 = -r .* sin(theta0);
s30 = -r .* sin(theta30);
s60 = -r .* sin(theta60);
s90 = -r .* sin(theta90);

v = -r .* omega .* cos(theta) ./ 1000; % m/s
v0 = -r .* omega .* cos(theta0) ./ 1000; 
v30 = -r .* omega .* cos(theta30) ./ 1000; 
v60 = -r .* omega .* cos(theta60) ./ 1000; 
v90 = -r .* omega .* cos(theta90) ./ 1000;

a = r .* omega.^2 .* sin(theta) ./ 1000; % m/s^2
a0 = r .* omega.^2 .* sin(theta0) ./ 1000; 
a30 = r .* omega.^2 .* sin(theta30) ./ 1000;
a60 = r .* omega.^2 .* sin(theta60) ./ 1000; 
a90 = r .* omega.^2 .* sin(theta90) ./ 1000; 


%$ sketch the curve
figure;

xlabel('theta(rad/s)');
ylabel('s(mm)');

plot(theta, s, 'r');
hold on;
plot(theta0, s0, '*g');
plot(theta30, s30, '*g');
plot(theta60, s60, '*g');
plot(theta90, s90, '*g');
hold off;
axis([0, pi/2, -40, 0]);
title('s-t figure');


figure;

xlabel('theta(rad/s)');
ylabel('v(mm/s)');

plot(theta, v, 'k');
hold on;
plot(theta0, v0, '*y');
plot(theta30, v30, '*y');
plot(theta60, v60, '*y');
plot(theta90, v90, '*y');
hold off;
axis([0, 2*pi, -0.2, 0.2]);
title('v-t figure');

figure;

xlabel('theta(rad/s)');
ylabel('a(m/s^2)');

plot(theta, a, 'b');
hold on;
plot(theta0, a0, '*r');
plot(theta30, a30, '*r');
plot(theta60, a60, '*r');
plot(theta90, a90, '*r');
hold off;
axis([0, 2*pi, -0.5, 0.5]);
title('a-t figure');

