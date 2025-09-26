clc, clear, close all;
format long

x1 = 0;
xn = 4;
f = @(x) x.^2 .* exp(-x);
area_actual = 1.523793389; % using scientific calculator

%% Trapezoidal Rule
n = 12; % given
h = (xn - x1) / n;  % for Trapezoidal Rule
x = x1:h:xn;
y = f(x);
area_3a = 0.5 * h * ((y(1) + y(end)) + 2 * sum(y(2:end-1)));
error = abs((area_actual - area_3a) / area_actual) * 100;

fprintf("Area : %.4f\n", area_3a);
fprintf("Error: %.2f\n\n", error);