clc;
clear all ;
close all ;
syms x
f1 = (2*x*sin(3*x)+exp((-2*x))/x^(0.5));
df=diff(f1)
y=inline(df);
x= input( 'Enter your x value: ' );
true_val1 = y(x);
f=inline(f1);
h = [];
value = [];
error = [];
for i=1:6;
hi=10^(-i);
h= [h hi];
valuei = forward_differentiate(f,x,hi,1,1);
value = [value valuei];
errori = abs((true_val1-valuei)/true_val1)*100;
error = [error errori];
end
disp(h);
disp(value);
disp(error);