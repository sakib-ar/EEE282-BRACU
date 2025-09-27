function [A,x] = Naive_Gauss(A,b)
A = [A b];
[row, col] = size(A);

%% Forward Elimination
for i = 1 : col-2
    if A(i,i) == 0
        error('Cannot proceed due to Zero Pivot.');
    end
    for j = i+1 : row
        m = A(j,i) / A(i,i);
        A(j,1:col) = A(j,1:col) - A(i,1:col) * m;
    end
end

%% Back Substitution
x = zeros(row,1);
x(row) = A(row,col) / A(row,row);

for i = row-1 : -1 : 1
    x(i) = ((A(i, end) - A(i, i+1 : row) * x(i+1 : row)) / A(i,i));
end
end