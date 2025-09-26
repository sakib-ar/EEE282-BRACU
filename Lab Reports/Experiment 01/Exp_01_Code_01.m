clc
clear
close all

%% Main code:
rv1 = [2 4 1 2 1 3 2 5]; % id = 24121325
rv2 = 1:8;
element_mult = rv1 .* rv2;
rv3 = rv2';
norm_mult = rv1 * rv3;
final_value = element_mult * norm_mult;
root_fv = sqrt(final_value);
sz = size(element_mult);
last_digit = rv1(end);
p = root_fv .^ last_digit;
sum = p + sz(2);
mean = mean(sum);

%% Output/Display:
disp('ID Vector, rv1 = ')
disp(rv1);
disp('rv2 = ')
disp(rv2)
disp('element_mult = ')
disp(element_mult);
disp('norm_mult = ')
disp(norm_mult)
disp('final_value = ')
disp(final_value)
disp('root_fv  = ')
disp(root_fv)
disp('sz = ')
disp(sz)
disp('p = ')
disp(p)
disp('vector sum, sum = ')
disp(sum)
disp('mean = ')
disp(mean)