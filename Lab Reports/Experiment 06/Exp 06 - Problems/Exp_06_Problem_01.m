clc, clear, close all;

%% Data
x = [0, 1.8, 5, 6, 8.2, 9.2, 12];
y = [26, 16.415, 5.375, 3.5, 2.015, 2.54, 8];
xp = 3.5;
n = length(x);

%% Divided Difference Table Calculation
ddf = zeros(n,n);
ddf(:,1) = y';

for j = 2:n
    for i = 1:(n - j + 1)
        ddf(i,j) = ((ddf(i+1 , j-1) - ddf(i , j-1)) / (x(j+i-1) - x(i)));
    end
end
coeff = ddf(1,:);

%% Calculation
yp = coeff(1);
product = 1;

for k = 2:n
    product = product * (xp - x(k-1));
    yp = yp + coeff(k) * product;
end
fprintf('The interpolated value at x = %.4f is y = %.5f\n', xp, yp);