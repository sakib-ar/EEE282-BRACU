function [c] = bisect(f,a,b,tol)

if (f(a) * f(b)) >= 0
    error('Out of range! Select another Bracket...');
end

old = 0;
err = 100;

while err > tol
    c = (a + b) / 2;
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