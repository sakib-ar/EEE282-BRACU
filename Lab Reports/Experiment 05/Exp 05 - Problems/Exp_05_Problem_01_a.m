clc, clear, close all;

%% Input Data
x = [26.67 93.33 148.89 315.56];
y = [1.35 .085 0.012 0.00075];

%% Plotting the data
figure;
plot(x, y, 'r*');
title('Viscosity of SAE 70 Oil vs. Temperature');
legend('Data Points');
xlabel('Temperature (°C)');
ylabel('Viscosity (N.s/m^2)');
grid on;