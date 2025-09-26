function derivative = bdd_first_order(f, x, h)
 % Backward Divided Difference for 1st order derivative
 % f: function handle
 % x: point at which to evaluate derivative
 % h: step size
 
 derivative = (f(x) - f(x - h)) / h;
end