function [area_trap] = trapizoidal(h,y,actual_area)
area_trap = (h/2) * (y(1)+y(end)+2*sum(y(2:end-1)));
area_trap
error_trap = abs((actual_area-area_trap)/actual_area)*100 
end