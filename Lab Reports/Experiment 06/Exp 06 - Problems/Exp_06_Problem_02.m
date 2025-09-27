clc, clear, close all;

%% Data
x = [0 8 16 24 32 40];
y = [14.621 11.843 9.870 8.418 7.305 6.413];
T = 27;
y_given = 7.986;

%% Linear Interpolation
y_lin = interp1(x, y, T, 'linear');

%% Lagrange Interpolating Polynomial
n = length(x);
y_lagr = 0;

for i = 1:n
    L = 1;
    for j = 1:n
        if j ~= i
            L = L * (T - x(j)) / (x(i) - x(j));
        end
    end
    y_lagr = y_lagr + y(i) * L;
end

%% Percentage Errors
lin_error  = abs((y_lin - y_given) / y_given) * 100;
lagr_error = abs((y_lagr - y_given) / y_given) * 100;

%% Answers to the question
fprintf('(a) Linear Interpolation at T = 27: %.4f mg/L\n', y_lin);
fprintf('(b) Lagrange Interpolating Polynomial at T = 27: %.4f mg/L\n', y_lagr);
fprintf('(c) Percentage Errors:\n\tLinear Interpolation  : %.4f%%\n\tLagrange Interpolation: %.4f%%\n', lin_error, lagr_error);