function area_simp13 = simp13(f, a, b, n)
% Inputs:
% f - Function (e.g., @(x) sin(x))
% a - Lower limit
% b - Upper limit
% n - Number of subintervals (Must be an EVEN positive integer)

if n <= 0 || mod(n, 2) ~= 0
    error("The number of subintervals (n) must be a positive EVEN integer for Simpson's 1/3 rule");
end

h = (b - a) / n; % Step Size
int_sum = f(a) + f(b);

for i = 1:(n - 1)
    x_i = a + i * h;

    if mod(i, 2) == 1
        int_sum = int_sum + 4 * f(x_i);
    else
        int_sum = int_sum + 2 * f(x_i);
    end
end

area_simp13 = (h / 3) * int_sum;

end