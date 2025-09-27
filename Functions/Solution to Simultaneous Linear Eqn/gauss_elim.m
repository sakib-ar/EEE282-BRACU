function [U, x] = gauss_elim(A, b)
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

% Singularity Check
if rank(A) < n
    error('The system is singular (rank(A) < n). A unique solution does not exist.');
end

U = [A b];
[n, cols] = size(U);

% Partial Pivoting
for i = 1:n-1
    [~, max_row_index] = max(abs(U(i:n, i)));
    pivot_row = max_row_index + i - 1;
    
    if pivot_row ~= i
        U([i, pivot_row], :) = U([pivot_row, i], :);
    end

% Forward Elimination
    for j = i + 1:n
        m = U(j, i) / U(i, i);
        U(j, i:cols) = U(j, i:cols) - m * U(i, i:cols);
    end
end

% Back Substitution
x = zeros(n, 1);

if abs(U(n,n)) < 1e-10
    error('Matrix is singular or nearly singular after elimination. Cannot solve.');
end

x(n) = U(n, cols) / U(n, n);

for i = n-1:-1:1
    dot_product = U(i, i+1:n) * x(i+1:n);
    x(i) = (U(i, cols) - dot_product) / U(i, i);
end
end