clc, clear all, close all;

n = 12;
a = 0.5;
b = 2;
h = (b-a)/n;
x_val = a:h:b;
f = @(x)((1 + 5*sin(x.^2)) ./ (x + 1).^(3/2));
g= @(x)((1 + 5*sin(x.^2)) ./ (x + 1).^(3/2));
actual_area = integral(g,0.5,2);
y_val = f(x_val);

%trapizoidal area
[area_trap] = trapizoidal(h,y_val,actual_area);
%Simp_1/3
[area_sim_1_3] = simpson_1_3(h,y_val,actual_area);

%Simp_3/8
[area_sim_3_8] = simpson_3_8(h,y_val,actual_area);
