clc; clear; close all;

x1 = 1.6;
xn = 3.8;
f = @(x) exp(x);
area_true = 39.74815207;

%% Simpson's 1/3 Rule
h_abc = [0.2 0.4 0.6];

for i = 1:length(h_abc)
    h = h_abc(i);
    x = x1:h:xn;
    y = f(x);

    area_simp_1_3 = 0;
    for j = 1:2:length(x) - 2
        area_simp_1_3 = area_simp_1_3 + (1/3) * h * (y(j) + 4*y(j+1) + y(j+2)); 
    end
    error = abs((area_true - area_simp_1_3) / area_true) * 100;

    fprintf("For, h = %.1f\n", h);
    fprintf("Area: %.4f\n", area_simp_1_3);
    fprintf("Error: %.2f\n\n", error);
end