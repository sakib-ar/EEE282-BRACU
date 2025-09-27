clc, clear, close all;

A = [2 3 5 ; 3 4 1 ; 6 7 2]; % Coefficient Matrix
b = [23 ; 14 ; 26]; % Constant Matrix

[A,x] = Naive_Gauss(A,b);

disp('Augmented Matrix after Naive-Gaussian Elimination:');disp(A);
disp('Solution Vector (x):'); disp(x);