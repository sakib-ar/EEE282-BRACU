clc, clear, close all;

m = [70 ; 60 ; 40];   % Masses
c = [10 ; 14 ; 17];   % Drag coefficients
g = 9.8 ;    % Gavitational Acceleration
v = 5 ;      % Velocity

A = [ m(1),  1,  0 ;
      m(2), -1,  1 ;
      m(3),  0, -1 ];

b = [ m(1)*g - c(1)*v ;
      m(2)*g - c(2)*v ;
      m(3)*g - c(3)*v ];

[A,x] = Naive_Gauss(A,b);

fprintf('Acceleration, a = %.4f m/s^2\n', x(1));
fprintf('Tension T (lower cord) = %.4f N\n', x(2));
fprintf('Tension R (upper cord) = %.4f N\n', x(3));