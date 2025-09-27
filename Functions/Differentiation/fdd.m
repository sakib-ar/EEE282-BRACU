function fdd_value = fdd(f,x,h,o,i)
% f: Derivative Function
% x: The Value at which the Derivative has to be Evaluated
% h: Divided Difference (Step Size)
% o: Order of the Derivative (Up to fourth derivative)
% i: Order of Accuracy (1 -> Low Accuracy, 2 -> High Accuracy)

if(o == 1 && i == 1)
    fdd_value = (f(x+h)-f(x))/h;
elseif(o == 1 && i == 2)
    fdd_value = (-f(x + 2*h) + 4*f(x+h) - 3*f(x))/(2*h);
elseif(o == 2 && i == 1)
    fdd_value = (f(x+2*h)-2*f(x+h)+f(x))/(h*h);
elseif(o == 2 && i == 2)
    fdd_value = (-f(x+3*h)+ 4*f(x+2*h)-5*f(x+h)+2*f(x))/(h*h);
elseif(o == 3 && i == 1)
    fdd_value = (f(x+3*h) - 3*f(x+2*h) + 3*f(x+h) - f(x))/(h^3);
elseif(o == 3 && i == 2)
    fdd_value = (-3*f(x+4*h) + 14*f(x+3*h) - 24*f(x+2*h) + 18*f(x+h) - 5*f(x))/(2*(h^3));
elseif(o == 4 && i == 1)
    fdd_value = (f(x+4*h) - 4*f(x+3*h) + 6*f(x+2*h) - 4*f(x+h) + f(x))/(h^4);
elseif(o == 4 && i == 2)
    fdd_value = (-2*f(x+5*h) + 11*f(x+4*h) - 24*f(x+3*h) + 26*f(x+2*h) - 14*f(x+h) + 3*f(x))/(h^4);
else
    error("Order of the Derivative must be between 1-4 & Order of Accuracy must be either 1 or 2");
end
end