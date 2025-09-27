function yp = lag_pol_int(x, y, xp)
% Inputs:
% x - A row or column vector of x-coordinates of the known data points
% y - A row or column vector of y-coordinates of the known data points
% xp- The x-value at which to evaluate the interpolating polynomial
%
% Output:
% yp- The interpolated y-value corresponding to xp

if length(x) ~= length(y)
    error('Input vectors x_points and y_points must have the same number of elements');
end

n = length(x);
yp = 0.0;

% The Lagrange formula is: P(x) = sum_{j=1 to n} [y_j * L_j(x)]
% where L_j(x) is the j-th Lagrange basis polynomial

for j = 1:n
    L = 1.0;
    for k = 1:n
        if j ~= k
            term = (xp - x(k)) / (x(j) - x(k));
            L = L * term;
        end
    end
    yp = yp + y(j) * L;
end
end