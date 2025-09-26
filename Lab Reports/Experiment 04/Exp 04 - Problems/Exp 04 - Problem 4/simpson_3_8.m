function [area_sim_3_8] = simpson_3_8(h,y_val)
area_sim_3_8=0;
for i = 1:3:length(y_val)-3
area_sim_3_8 = area_sim_3_8+(3*h/8)*(y_val(i)+3*y_val(i+1)+3*y_val(i+2)+y_val(i+3));
end