function area_trap = trap(f, a, b, n)
% Inputs:
% f - Function (e.g., @(x) sin(x))
% a - Lower limit
% b - Upper limit
% n - Number of subintervals (Must be a positive integer)

if n <= 0 || mod(n, 1) ~= 0
    error("The number of subintervals (n) must be a positive integer");
end

h = (b - a) / n; % Step Size
int_sum = f(a) + f(b);

for i = 1:(n - 1)
    x_i = a + i * h;
    int_sum = int_sum + 2 * f(x_i);
end

area_trap = (h / 2) * int_sum;

end