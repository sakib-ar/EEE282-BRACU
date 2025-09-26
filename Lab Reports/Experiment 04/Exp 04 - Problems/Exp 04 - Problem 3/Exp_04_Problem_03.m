clc, clear, close all

n = 4;
a = 0;
b = 4;
h = (b-a)/n;

x_val = [0 1 2 3 4];
y_val = [0 2.15 3.26 4.18 4.82];

%trapizoidal area
[area_trap] = trapizoidal(h,y_val);
%Simp_1/3
[area_sim_1_3] = simpson_1_3(h,y_val);