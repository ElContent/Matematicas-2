function [outputArg1,outputArg2] = bisection(f,a,b,epi,delta,n)
%bisection Summary of this function goes here
%   Detailed explanation goes here

i = 0;
salida = 0;
while salida == 0
    i = i + 1;
    c = (a+b)/2;
    if (f(a)*f(c)) < 0
        b = c;
    else
        a = c;
    end
    
    % Condiciones de salida
    if (abs(b-a)/2) < delta
        salida = 1;
    end
    if f(c) < epi
        salida = 1;
    end
    if i == n
        salida = 1;
    end
end



outputArg1 = f;
outputArg2 = a;
end

