clc, clear, close all;
format long;

%% Input Data
x = 0:5;
y = [2.1 7.7 13.6 27.2 40.9 61.1];

%% Polynomial Regression Coefficients
[a0, a1, a2] = poly_reg(x,y);
xp = x(1) : 0.001 : x(end);
yp = a0 + a1 * xp + a2 * xp.^2;

%% Plotting the Regression Curve
figure;
plot(x, y, '*r');
title('2^n^d Order Polynomial Regression Fit');
hold on;
plot(xp, yp, '-b');
legend('Data Points', 'Regression Curve');
grid on;