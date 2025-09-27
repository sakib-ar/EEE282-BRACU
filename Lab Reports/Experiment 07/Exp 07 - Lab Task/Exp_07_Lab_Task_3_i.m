clc, clear, close all;

%% Converting System into Matrices
A1 = [2 4 -6 ; 1 5 3 ; 1 3 2];
b1 = [-4 ; 10 ; 5];
A2 = [1 2 6 ; -1 2 9 ; 1 -2 3];
b2 = [7 ; 2 ; 10];
A3 = [4 8 4 0 ; 1 5 4 -3 ; 1 4 7 2 ; 1 3 0 -2];
b3 = [8 ; -4 ; 10 ; -4];

%% Naive-Gauss Elimination Function
[A1_NG,x1] = Naive_Gauss(A1,b1);
[A2_NG,x2] = Naive_Gauss(A2,b2);
[A3_NG,x3] = Naive_Gauss(A3,b3);

%% Output
disp('Matrix-A after Naive-Gaussian Elimination:'); disp(A1_NG);
disp('Solution Vector of Matrix-A:'); disp(x1);
disp('Matrix-B after Naive-Gaussian Elimination:'); disp(A2_NG);
disp('Solution Vector of Matrix-B:'); disp(x2);
disp('Matrix-C after Naive-Gaussian Elimination:'); disp(A3_NG);
disp('Solution Vector of Matrix-C:'); disp(x3);