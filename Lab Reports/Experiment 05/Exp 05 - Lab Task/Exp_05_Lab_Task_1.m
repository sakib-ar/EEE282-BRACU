clc, clear, close all;
format long;

%% Input Data
x = 1:7;
y = [0.5 2.5 2 4 3.5 6 5.5];

%% Linear Regression Coefficients
[a0,a1] = lin_reg(x,y);
xp = x(1) : 0.001 : x(end);
yp = a0 + a1 * xp;

%% Plotting the Regression Line
figure;
plot(x, y, '*r');
title('Linear Regression Fit');
hold on;
plot(xp, yp, '-b');
legend('Data Points', 'Regression Line', 'Location', 'northwest');
grid on;