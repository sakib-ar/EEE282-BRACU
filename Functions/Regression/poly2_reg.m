function [a0, a1, a2] = poly2_reg(x,y)
% Input x and its corresponding y vector
% and get 2nd order regression coefficients...
% (a0, a1, a2) as Output
n           = length(y);
sum_x       = sum(x);
sum_y       = sum(y);
sum_xsqr    = sum(x .^ 2);
sum_xcube   = sum(x .^ 3);
sum_xpow4   = sum(x .^ 4);
sum_xy      = sum(x .* y);
sum_xsqry   = sum((x .^ 2) .* y);

% Coefficient Matrix
A = [n sum_x sum_xsqr;
    sum_x sum_xsqr sum_xcube;
    sum_xsqr sum_xcube sum_xpow4];

% Constant Matrix
B = [sum_y;
    sum_xy;
    sum_xsqry];

sol = A \ B;

a0 = sol(1);
a1 = sol(2);
a2 = sol(3);

end