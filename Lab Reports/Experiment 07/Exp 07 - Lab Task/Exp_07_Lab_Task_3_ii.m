clc, clear, close all;

%% Converting System into Matrices
A1 = [2 4 -6 ; 1 5 3 ; 1 3 2];
b1 = [-4 ; 10 ; 5];
A2 = [1 1 6 ; -1 2 9 ; 1 -2 3];
b2 = [7 ; 2 ; 10];
A3 = [4 8 4 0 ; 1 5 4 -3 ; 1 4 7 2 ; 1 3 0 -2];
b3 = [8 ; -4 ; 10 ; -4];

%% Gaussian Elimination with Pivoting Function
[A1_CG,x1] = Complete_Gauss(A1,b1);
[A2_CG,x2] = Complete_Gauss(A2,b2);
[A3_CG,x3] = Complete_Gauss(A3,b3);

%% Output
disp('Matrix-A after Complete Gaussian Elimination:'); disp(A1_CG);
disp('Solution Vector of Matrix-A:'); disp(x1);
disp('Matrix-B after Complete Gaussian Elimination:'); disp(A2_CG);
disp('Solution Vector of Matrix-B:'); disp(x2);
disp('Matrix-C after Complete Gaussian Elimination:'); disp(A3_CG);
disp('Solution Vector of Matrix-C:'); disp(x3);