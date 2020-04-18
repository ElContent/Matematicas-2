function y = bisection2(fun,a,b,n)
%bisection Summary of this function goes here
%   Detailed explanation goes here
u = subs(fun, a);
v = subs(fun, b);

if sign(u) == sign(v)
    disp('Error: No hay solución por este método.');
    return
end

while (b-a)/2 > n
    c = (a + b)/2;
    w = subs(fun, c);
    if sign(u) == sign(w)
        a = c;
        u = w;
    else
        b = c;
        v = w;
    end
end

end
