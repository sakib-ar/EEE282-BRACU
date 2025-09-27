function area_simp38 = simp38(f, a, b, n)
% Inputs:
% f - Function (e.g., @(x) sin(x))
% a - Lower limit
% b - Upper limit
% n - Number of subintervals (Must be a MULTIPLE of 3)

if n <= 0 || mod(n, 3) ~= 0
    error("The number of subintervals (n) must be a positive multiple of 3 for Simpson's 3/8 rule");
end

h = (b - a) / n;
int_sum = f(a) + f(b);

for i = 1:(n - 1)
    x_i = a + i * h;

    if mod(i, 3) == 0
        int_sum = int_sum + 2 * f(x_i);
    else
        int_sum = int_sum + 3 * f(x_i);
    end
end

area_simp38 = (3 * h / 8) * int_sum;

end