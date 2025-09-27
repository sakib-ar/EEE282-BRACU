clc, clear, close all;
format long;

f = @(x) x^5 + x + 1;
x_low = -1;
x_up = 0;
e = 1e-4;

[sol] = bisect(f, x_low, x_up, e);

fprintf('Approximated Real Root: %f\n',sol);