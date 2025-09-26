clc; clear; close all;

x1 = 1.6;
xn = 3.8;
f = @(x) exp(x);
area_true = 39.74815207;

%% Simpson's 3/8 Rule
h_abc = [0.2 0.4 0.6];

for i = 1:length(h_abc)
    h = h_abc(i);
    x = x1:h:xn;
    y = f(x);

    area_simp_3_8 = 0;
    for j = 1:3:length(x) - 3
        area_simp_3_8 = area_simp_3_8 + (3/8) * h * (y(j) + 3*y(j+1) + 3 * y(j+2) + y(j+3)); 
    end
    error = abs((area_true - area_simp_3_8) / area_true) * 100;

    fprintf("For, h = %.1f\n", h);
    fprintf("Area: %.4f\n", area_simp_3_8);
    fprintf("Error: %.2f\n\n", error);
end