function newtonBis(fun, A_var, e, tol, N)
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
    Fc(inc, 1) = fun(C_var);
    
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

T = table(i, A, H, C, Fc);
disp(T);

switch salida
    case 0
        fprintf("Salida por llegar al límite introducido \n");
    case 1
        fprintf("Salida por sobrepaso de tolerancia \n");
    case 2
        fprintf("Salida por sobrepaso del error \n");
end

end

