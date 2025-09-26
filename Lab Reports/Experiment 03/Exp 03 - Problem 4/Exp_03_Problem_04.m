clc;
clear all;
close all;
s = [0, 4, 8, 12, 16, 20]; % displacement in meters
t = [0, 34.7, 61.8, 82.8, 99.2, 112.0]; % time in seconds
n = length(s);
velocity_forward = zeros(1, n);
velocity_backward = zeros(1, n);
velocity_central = zeros(1, n);
% Forward Differentiation: v(i) = [s(i+1) - s(i)] / [t(i+1) - t(i)]
for i = 1:n-1
 velocity_forward(i) = (s(i+1) - s(i)) / (t(i+1) - t(i));
end
fprintf('1. FORWARD DIFFERENTIATION:\n');
disp(velocity_forward);
% Backward Differentiation: v(i) = [s(i) - s(i-1)] / [t(i) - t(i-1)]
for i = 2:n
 velocity_backward(i) = (s(i) - s(i-1)) / (t(i) - t(i-1));
end
fprintf('2. BACKWARD DIFFERENTIATION:\n');
disp(velocity_backward);
% Central Differentiation: v(i) = [s(i+1) - s(i-1)] / [t(i+1) - t(i-1)]
for i = 2:n-1
 velocity_central(i) = (s(i+1) - s(i-1)) / (t(i+1) - t(i-1));
end
fprintf('3. CENTER DIFFERENTIATION:\n');
disp(velocity_central);
