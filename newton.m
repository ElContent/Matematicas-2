function newton(fun, A_var, e, tol, N)
syms x;
der = diff(fun);
if not(isa(fun,'function_handle'))
    fun = matlabFunction(fun);
end
if not(isa(der,'function_handle'))
    der = matlabFunction(der);
end

inc = 0;
whileContinue = true;
while whileContinue == true
    inc = inc + 1;
    H_var = fun(A_var) / der(A_var);
    C_var = A_var - H_var;
    
    % Preparando la tabla:
    i(inc, 1) = inc;
    A(inc, 1) = A_var;
    H(inc, 1) = H_var;
    C(inc, 1) = C_var;
    Func(inc, 1) = fun(C_var);
    
    A_var = C_var;
    
    % Condiciones de salida
    if inc >= N
        whileContinue = false;
        salida = 0;
    end
    if abs(H_var) <= tol
        whileContinue = false;
        salida = 1;
    end
    if abs(fun(C_var)) <= e
        whileContinue = false;
        salida = 2;
    end
    
end

T = table(i, A, H, C, Func);
disp(T);

switch salida
    case 0
        fprintf("Salida porque i ha llegado al límite. \n");
    case 1
        fprintf("Salida porque la tolerancia (H) es menor a la introducida. \n");
    case 2
        fprintf("Salida por sobrepaso del error Fun(c). \n");
end

if abs(H_var) >= tol
    fprintf('La solución DIVERGE \n\n');
else
    fprintf('La solución CONVERGE \n\n');
end

end

