clc, clear, close all;
format long;

%% Input Data
x = [26.67 93.33 148.89 315.56];
y = [1.35 .085 0.012 0.00075];
Y = log(y); % Log of the data

%% Linear Regression Coefficients
[a0,a1] = lin_reg(x,Y);
xp = x(1) : 0.001 : x(end);
yp = a0 + a1 * xp;

%% Plotting the Regression Line
figure;
plot(x, Y, '*r');
title('Natural log of Viscosity vs. Temperature');
hold on;
plot(xp, yp, '-b');
legend('Data Points','Regression Line');
xlabel('Temperature (°C)');
ylabel('ln(Viscosity) (N.s/m^2)');
grid on;