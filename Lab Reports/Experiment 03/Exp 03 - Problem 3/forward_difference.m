function value = forward_difference(f,x,h,o,i)
%f = derivative function
%x = the value at which the derivative has to be evaluated
%h = divided difference
%o = Order of the derivative
%i = takes the values either 1 or 2; 2 denotes more accurate results
 if(o == 1 && i == 1)
 value = (f(x+h)-f(x))/h;
 elseif(o == 1 && i == 2)
 value = (-f(x + 2*h) + 4*f(x+h) - 3*f(x))/(2*h);
 end
 
end