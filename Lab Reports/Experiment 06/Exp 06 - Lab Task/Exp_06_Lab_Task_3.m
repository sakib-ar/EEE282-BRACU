clc, clear, close all;

x = 0:6;
y = [0, 0.8415, 0.9093, 0.1411, -0.7568, -0.9589, -0.2794];

n = length(x);

X = linspace(min(x), max(x), 200);
Y = zeros(size(X));

for k = 1:length(X)
    sum = 0;
    for i = 1:n
        L = 1;
        for j = 1:n
            if j ~= i
                L = L * (X(k) - x(j)) / (x(i) - x(j));
            end
        end
        sum = sum + y(i) * L;
    end
    Y(k) = sum;
end

% Plotting
figure;
plot(X, Y, 'r', 'LineWidth', 1.5);
hold on;
plot(x, y, 'bo', 'MarkerFaceColor','b');
grid on;
xlabel('x');
ylabel('f(x)');
title('Lagrange Polynomial Interpolation');
legend('Data Points', 'Interpolated Curve');