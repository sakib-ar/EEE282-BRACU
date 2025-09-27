function [c, itr] = falsi(f,a,b,tol)
% Inputs:
% f     --> Function (e.g., @(x) log(3x+2))
% a,b   --> Lower and Upper Limit
% tol   --> Tolerance (i.e., stops iteration when reached desired error)

% Outputs:
% c     --> Approximated Root
% itr   --> Number of iterations performed

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