function yp = new_pol_int(x, y, xp)
% Inputs:
% x - A row or column vector of x-coordinates of the known data points.
% y - A row or column vector of y-coordinates of the known data points.
% xp- The x-value at which to evaluate the interpolating polynomial.
%
% Output:
% yp- The interpolated y-value corresponding to xp.

if length(x) ~= length(y)
    error('Input vectors x_points and y_points must have the same number of elements');
end

n = length(x);
div_diff_table = zeros(n, n);
div_diff_table(:, 1) = y(:);

for j = 2:n
    for i = j:n
        numerator = div_diff_table(i, j-1) - div_diff_table(i-1, j-1);
        denominator = x(i) - x(i-j+1);
        div_diff_table(i, j) = numerator / denominator;
    end
end

coeffs = diag(div_diff_table);
yp = coeffs(n);

for i = (n-1):-1:1
    yp = yp * (xp - x(i)) + coeffs(i);
end
end