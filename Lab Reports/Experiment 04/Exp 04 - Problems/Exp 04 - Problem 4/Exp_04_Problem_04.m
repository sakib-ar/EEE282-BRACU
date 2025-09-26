Clc, clear, close all

n = 6;
a = 0;
b = 6;
h = (b-a)/n;

x_val = [0 1 2 3 4 5 6];
y_val = [0 2.15 3.26 4.18 4.82 5.61 4.77];

%trapizoidal area
[area_trap] = trapizoidal(h,y_val);
%Simp_1/3
[area_sim_1_3] = simpson_1_3(h,y_val);

%Simp_3/8
[area_sim_3_8] = simpson_3_8(h,y_val);