clc, clear, close all;
format long;

f = @(x) x.^2 - 3.68 * log2(x) - 1.5;

%% False-Position Method
% From the previous problem, we found two roots
% Selecting the same brackets for future-comparison
inv = [0.5 1 ; 2 3];

% With Tolerances
e = [1e-3 1e-4 1e-5]; % Tolerances
roots = zeros(3,2);
itr = zeros(3,2);

for i = 1:2
    for j = 1:length(e)
        [roots(j,i), itr(j,i)] = falsi(f,inv(i,1),inv(i,2),e(j));
    end
end

for i = 1:2
    fprintf("Approximate Root %d on [%.1f,%.1f]:\n", i, inv(i,1), inv(i,2));
    fprintf("Tolerance \t Computed Root \t Iterations\n");
    
    for j = 1:length(e)
        fprintf("%s \t %f \t %d\n", e(j), roots(j,i), itr(j,i));
    end
    fprintf("\n");
end