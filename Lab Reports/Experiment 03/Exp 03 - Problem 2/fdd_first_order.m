function derivative = fdd_first_order(f, x, h)
 % Forward Divided Difference for 1st order derivative
 % f: function handle
 % x: point at which to evaluate derivative
 % h: step size
 
 derivative = (f(x + h) - f(x)) / h;
end
