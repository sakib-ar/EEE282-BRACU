clc, clear, close all;
format long;

x = 0:6;
y = [0, 0.8415, 0.9093, 0.1411, -0.7568, -0.9589, -0.2794];

xp = input('Enter the x value for interpolation: ');

if xp < min(x) || xp > max(x)
    error('The given point is outside the data-range');
end

for i = 1:length(x)-1
    if xp >= x(i) && xp <= x(i+1)
        yp = y(i) + (y(i+1) - y(i)) * (xp - x(i)) / (x(i+1) - x(i));
        break;
    end
end

fprintf('Interpolated value at x = %.4f is y = %.4f\n', xp, yp);

% Plotting
figure;
plot(x, y, '-or', 'MarkerFaceColor', 'r','LineWidth', 1.5);
hold on;
plot(xp, yp, 'ks', 'MarkerFaceColor', 'k');
xlabel('x');
ylabel('f(x)');
title('Linear Interpolation');
legend('Data Points', 'Interpolated Point');
grid on;