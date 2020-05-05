function metodoNewton(fun, A_var, e, tol, N)
syms x;

der = diff(fun);
inc = 0;
whileOut = true;
while whileOut == false
    inc = inc + 1;
    H_var = subs(fun, A_var) / subs(der, A_var);
    C_var = A_var - H_var;
    A_var = C_var;
    
    % Preparando la tabla:
    i(inc, 1) = inc;
    A(inc, 1) = A_var;
    H(inc, 1) = H_var;
    C(inc, 1) = C_var;
    Fc(inc, 1) = subs(fun, C_var);
    
    % Condiciones de salida
    if inc >= N
        whileOut = false;
        salida = 0;
    end
    if abs(H_var) <= tol
        whileOut = false;
        salida = 1;
    end
    if abs(subs(fun, C_var)) <= e
        whileOut = false;
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

