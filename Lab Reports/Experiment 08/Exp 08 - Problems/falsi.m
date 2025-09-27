function [c, itr] = falsi(f,a,b,tol)

if (f(a) * f(b)) >= 0
    error('Out of range! Select another Bracket...');
end

old = 0;
err = 100;
itr = 0;

while err > tol
    itr = itr + 1;
    c = ((a * f(b) - b * f(a)) / (f(b) - f(a)));
    err = abs((c - old) / c) * 100;
    old = c;

    if (f(c) * f(a)) > 0
        a = c;

    elseif (f(c) * f(a)) < 0
        b = c;
        
    else
        break
    end
end
end