clc, clear, close all;
format long;

%% Input Data
x = 0 : 4 : 20;
y = [67 84 98 125 149 185];

%% Both Regression Coefficients
[a0_lin,a1_lin] = lin_reg(x,y);
[a0_poly,a1_poly,a2_poly] = poly_reg(x,y);
xp = x(1) : 0.001 : x(end);
yp_lin = a0_lin + a1_lin * xp;
yp_poly = a0_poly + a1_poly * xp + a2_poly * xp.^2;

%% Plotting the Both Regressions
figure;
plot(x, y, '*k');
title('Bacterial Growth vs. Day');
hold on;
plot(xp, yp_lin, '--b');
hold on;
plot(xp, yp_poly, '-r');
legend('Data Points', 'Regression Line', 'Parabolic Curve', 'Location', 'northwest');
xlabel('Day');
ylabel('Amount (x 10^6)');
grid on;

%% Prediction
x40 = 40;
pred_lin = a0_lin + a1_lin * x40;
pred_poly = a0_poly + a1_poly * x40 + a2_poly * x40^2;

fprintf('Prediction after Day %d:\n', x40);
fprintf('\tLinear Regression: %.4f million bacteria\n', pred_lin);
fprintf('\tPolynomial Regression: %.4f million bacteria\n', pred_poly);