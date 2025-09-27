clc, clear, close all;

A = [60 -40 0 ; -40 150 -100 ; 0 -100 130]; % Coefficient Matrix
b = [200 ; 0 ; 380]; % Constant Matrix

[A,x] = Naive_Gauss(A,b);

fprintf('Value of Mesh Currents:\n')
for i = 1 : 3
    fprintf('I_%d = %.4f A\n', i, x(i));
end
fprintf('I_4 = 10 A\n'); % Already found out