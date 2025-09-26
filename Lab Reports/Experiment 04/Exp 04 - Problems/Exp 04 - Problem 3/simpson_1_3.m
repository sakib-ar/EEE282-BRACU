function [area_sim_1_3] = simpson_1_3(h,y)
area_sim_1_3=0;
for i = 1:2:length(y)-2
area_sim_1_3 = area_sim_1_3+(h/3)*(y(i)+4*y(i+1)+y(i+2));
end