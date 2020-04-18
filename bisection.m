function y = bisection(fun,a,b,n)
%bisection Summary of this function goes here
%   Detailed explanation goes here

syms x;

% Iterador:
i = 0;
%%%%%%%%%%%

u = subs(fun, a);
v = subs(fun, b);

if sign(u) == sign(v)
    disp('Error: No hay solución para este intervalo por este método.');
    return
end

fprintf('\n\n');
disp('  N     Xa     Xb    Xr    F(Xa)    F(Xb)    F(Xr)     error    ');
disp('|----|------|------|-----|-------|---------|--------|---------|');
Xant = 0;

while i < n
    Xr = (a + b)/2;
    Xact = Xr;
    x = Xr;
    Yr = eval(fun);
    Ea = abs((Xact-Xant)/Xact) * 100;
    ds_i = fprintf('%4d %17.8g %17.8g %17.8g %17.8g %17.8g %17.8g 10.5g', i, a, b, Xr, Ya, Yb, Ea);
    disp(ds_i);
    
    if(Ya*Yr)<0
        b = Xr;
    elseif (Ya*Yr)==0
        fprintf('\n\n la raiz exacta es: %17.8g', Xr);
        fprintf('\n\n el numero de iteraciones fue %d', i);
        break
    else
        a = Xr;
    end
    Xant = Xr;
    i = i + 1;
end

end

