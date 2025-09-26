function [area_trap] = trapizoidal(h,y)
area_trap = (h/2) * (y(1)+y(end)+2*sum(y(2:end-1)));
end