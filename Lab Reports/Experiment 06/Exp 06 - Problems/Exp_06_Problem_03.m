clc, clear, close all;
format long;

%% Data
t = linspace(0, 2*pi, 8);
f = sin(t).^2;
n = length(t);

%% Divided Difference Table Calculation
ddf = zeros(n,n);
ddf(:,1) = f';

for j = 2:n
    for i = 1:(n - j + 1)
        ddf(i,j) = ((ddf(i+1 , j-1) - ddf(i , j-1)) / (t(j+i-1) - t(i)));
    end
end

%% Calculation & Plot Data
coeff = ddf(1,:);

t_plot = linspace(min(t), max(t), 100);
f_plot = zeros(size(t_plot));

for i = 1:length(t_plot)
    ti = t_plot(i);
    sum = coeff(1);
    product_term = 1;
    for j = 2:n
        product_term = product_term * (ti - t(j-1));
        sum = sum + coeff(j) * product_term;
    end
    f_plot(i) = sum;
end

%% Plotting
figure;
plot(t_plot, f_plot, 'b-');
hold on;
plot(t , f , 'or', 'MarkerFaceColor', 'r');
legend('Newton Polynomial', 'Data Points', 'Location','best');
title('7^{th}-order Newton Interpolating Polynomial of sin^2(t)');
xlabel('t');
ylabel('f(t) = sin^2(t)');
grid on;