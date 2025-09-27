clc, clear, close all;
format long;

f = @(x) x.^2 - 3.68 * log2(x) - 1.5;

%% Ploting
x = linspace(0.1, 5, 100000);  % Domain error at x = 0
y = x.^2 - 3.68 * log2(x) - 1.5;
y1 = 0 * x;

plot(x, y, 'b-', 'LineWidth', 1.25);
hold on;
plot(x, y1,'k--'); % Straight Line at y = 0
xlabel('x');
ylabel('f(x)');
title('Plot of f(x) = x^2 - 3.68 log_2(x) - 1.5');
grid on;

%% Actual Root - from Graph
fprintf("The graph bypasses y = 0 at two x points\n");
fprintf("Therefore, there exist two roots\n");
fprintf("Root coordinates are: (0.869161,0) and (2.5391,0)\n\n");
act_root = [0.869161 2.5391];

%% Bisection Method
% From the plot, we find two roots
% Therefore, selecting random two brackets that have roots in-between
inv = [0.5 1 ; 2 3];

% With Tolerances
e = [1e-3 1e-4 1e-5]; % Tolerances
roots = zeros(3,2);
itr = zeros(3,2);

for i = 1:2
    for j = 1:length(e)
        [roots(j,i), itr(j,i)] = bisect(f,inv(i,1),inv(i,2),e(j));
    end
end

for i = 1:2
    fprintf("Approximate Root %d on [%.1f,%.1f]:\n", i, inv(i,1), inv(i,2));
    fprintf("Tolerance \t Computed Root \t Iterations \t Error(compared to Graph)\n");
    
    for j = 1:length(e)
        err = abs((act_root(i) - roots(j,i)) / act_root(i)) * 100;
        fprintf("%s \t %f \t %d \t\t\t %f%%\n", e(j), roots(j,i), itr(j,i), err);
    end
    fprintf("\n");
end