clc, clear, close all;
format long;

%% Input Data
x = [0.4 0.8 1.2 1.6 2 2.3];
y = [800 975 1500 1950 2900 3600];

%% Both Regression Coefficients
[a0_lin,a1_lin] = lin_reg(x,y);
[a0_poly,a1_poly,a2_poly] = poly_reg(x,y);
xp = x(1) : 0.001 : x(end);
yp_lin = a0_lin + a1_lin * xp;
yp_poly = a0_poly + a1_poly * xp + a2_poly * xp.^2;

%% Plotting the Both Regressions
figure;
plot(x, y, '*k');
title('Comparison of Linear Regression & 2^n^d Order Regression');
hold on;
plot(xp, yp_lin, '--b');
hold on;
plot(xp, yp_poly, '-r');
legend('Data Points','Linear Regression','2^n^d Order Regression', 'Location', 'northwest');
grid on;