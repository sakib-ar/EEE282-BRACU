function cdd_value = cdd(f,x,h,o,i)
% f: Derivative Function
% x: The Value at which the Derivative has to be Evaluated
% h: Divided Difference (Step Size)
% o: Order of the Derivative (Up to fourth derivative)
% i: Order of Accuracy (1 -> Low Accuracy, 2 -> High Accuracy)

if(o == 1 && i == 1)
    cdd_value = (f(x+h)-f(x-h))/(2*h);
elseif(o == 1 && i == 2)
    cdd_value = (-f(x + 2*h) + 8*f(x+h) - 8*f(x-h) + f(x-2*h))/(12*h);
elseif(o == 2 && i == 1)
    cdd_value = (f(x+h)-2*f(x)+f(x-h))/(h*h);
elseif(o == 2 && i == 2)
    cdd_value = (-f(x+2*h) + 16*f(x+h) - 30*f(x) + 16*f(x-h) - f(x-2*h))/(12*h*h);
elseif(o == 3 && i == 1)
    cdd_value = (f(x+2*h) - 2*f(x+h) + 2*f(x-h) - f(x-2*h))/(2*(h^3));
elseif(o == 3 && i == 2)
    cdd_value = (-f(x+3*h) + 8*f(x+2*h) - 13*f(x+h) + 13*f(x-h) - 8*f(x-2*h) + f(x-3*h))/(8*(h^3));
elseif(o == 4 && i == 1)
    cdd_value = (f(x+2*h) - 4*f(x+h) + 6*f(x) - 4*f(x-h) + f(x-2*h))/(h^4);
elseif(o == 4 && i == 2)
    cdd_value = (-f(x+3*h) + 12*f(x+2*h) + 39*f(x+h) + 56*f(x) - 39*f(x-h) + 12*f(x-2*h) + f(x-3*h))/(6*(h^4));
else
    error("Order of the Derivative must be between 1-4 & Order of Accuracy must be either 1 or 2");
end
end