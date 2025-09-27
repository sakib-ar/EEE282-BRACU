function [U, x] = naive_gauss(A, b)
% Inputs:
% A - An n x n coefficient matrix
% b - An n x 1 column vector of constants
%
% Outputs:
% U - The final upper triangular augmented matrix [A|b]
% x - The n x 1 solution vector

[n, m] = size(A);
if n ~= m
    error('Matrix A must be square');
end
if size(b,1) ~= n || size(b,2) ~= 1
    error('Vector b must be a column vector with the same number of rows as A');
end

U = [A b];
[n, cols] = size(U);

% Forward Elimination
for i = 1:n-1
    if U(i, i) == 0
        error('Zero pivot encountered. Naive Gaussian elimination cannot proceed.');
    end

    for j = i + 1:n
        m = U(j, i) / U(i, i);
        U(j, i:cols) = U(j, i:cols) - m * U(i, i:cols);
    end
end

% Back Substitution
x = zeros(n, 1);
x(n) = U(n, cols) / U(n, n);

for i = n-1:-1:1
    dot_product = U(i, i+1:n) * x(i+1:n);
    x(i) = (U(i, cols) - dot_product) / U(i, i);
end
end