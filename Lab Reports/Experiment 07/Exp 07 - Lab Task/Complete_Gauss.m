function [A,x] = Complete_Gauss(A,b)
%% Singularity Check
if rank(A) < size(A,1)
    error("The System is UNSOLVABLE (Singular System)");
end

A = [A b];
[row, col] = size(A);

%% Forward Elimination with Partial Pivoting
for i = 1 : row-1
    [~, pivotRow] = max(abs(A(i:row, i)));
    pivotRow = pivotRow + (i-1);

    if pivotRow ~= i
        temp = A(i,:);
        A(i,:) = A(pivotRow,:);
        A(pivotRow,:) = temp;
    end
    
    for j = i+1 : row
        m = A(j,i) / A(i,i);
        A(j, i:col) = A(j, i:col) - m * A(i, i:col);
    end
end

%% Back Substitution
x = zeros(row,1);
x(row) = A(row, col) / A(row, row);

for i = row-1 : -1 : 1
    x(i) = (A(i, end) - A(i, i+1:row) * x(i+1:row)) / A(i,i);
end
end