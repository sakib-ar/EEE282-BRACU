clc; clear; close all;

x1 = 1.6;
xn = 3.8;
f = @(x) exp(x);
area_true = 39.74815207;

%% Trapezoidal Rule
h_abc = [0.2 0.4 0.6];

for i = 1:length(h_abc)
    h = h_abc(i);
    x = x1:h:xn;
    y = f(x);
    area_trap = (h / 2) * ( y(1) + y(end) + 2 * sum(y(2:end-1)));
    error = abs((area_true - area_trap) / area_true) * 100;

    fprintf("For, h = %.1f\n", h);
    fprintf("Area: %.4f\n", area_trap);
    fprintf("Error: %.2f\n\n", error);
end