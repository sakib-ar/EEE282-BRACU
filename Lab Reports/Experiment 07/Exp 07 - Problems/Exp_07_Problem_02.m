clc, clear, close all;

A = [4 -2 0 ; 2 0 -3 ; 0 3 1]; % Coefficient Matrix
b = [3 ; -6 ; 8]; % Constant Matrix

[A,x] = Naive_Gauss(A,b);

disp('Values of a, b & c respectively: ');
disp(x);