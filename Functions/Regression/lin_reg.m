function [a0, a1] = lin_reg(x,y)
% Input x and its corresponding y vector
% and get the linear regression coefficients (a0, a1) as Output
n       = length(y);
sum_x   = sum(x);
sum_y   = sum(y);
sum_xy  = sum(x .* y);
sum_xsq = sum(x .^ 2);

% Coefficient Matrix
A = [n sum_x;
    sum_x sum_xsq];

% Constant Matrix
B = [sum_y;
    sum_xy];

sol = A \ B;
a0 = sol(1);
a1 = sol(2);

end