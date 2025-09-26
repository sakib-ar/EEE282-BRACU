function value = backward_difference(f,x,h,o,i)
%f = derivative function
%x = the value at which the derivative has to be evaluated
%h = divided difference
%o = Order of the derivative
%i = takes the values either 1 or 2; 2 denotes more accurate results
 if(o == 1 && i == 1)
 value = (f(x)-f(x-h))/h;
 elseif(o == 1 && i == 2)
 value = (3*f(x) - 4*f(x-h) + f(x-2*h))/(2*h);
 elseif(o == 2 && i == 1)
 end
 
end