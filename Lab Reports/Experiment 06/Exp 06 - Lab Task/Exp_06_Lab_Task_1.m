clc, clear, close all;

A = [3 2 4];
B = [2 0 0 -2];

C = conv(A,B); % Polynomial Multiplication
disp('C(x) = A(x) * B(x)'); disp(C);

roots_A = roots(A);
roots_B = roots(B);
roots_C = roots(C);

disp('Roots of A(x):'); disp(roots_A);
disp('Roots of B(x):'); disp(roots_B);
disp('Roots of C(x):'); disp(roots_C);