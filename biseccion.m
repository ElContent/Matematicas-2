function biseccion(fun, A_var, B_var, e, tol, N)
syms x;

inc = 0;
whileOut = false;
H_var = abs(B_var - A_var);
while whileOut == false
    inc = inc + 1;
    C_var = (A_var + B_var) / 2;
    H_var = H_var / 2;
    if subs(fun, A_var) * subs(fun, C_var) < 0
        B_var = C_var;
    else
        A_var = C_var;
    end
    
    % Formando la tabla:
    i(inc, 1) = inc;
    A(inc, 1) = A_var;
    B(inc, 1) = B_var;
    C(inc, 1) = C_var;
    H(inc, 1) = H_var;
    
    % Condiciones de salida:
    if inc >= N
        whileOut = true;
        salida = 0;
    end
    if H_var <= tol
        whileOut = true;
        salida = 1;
    end
    if abs(subs(fun, C_var)) <= e
        whileOut = true;
        salida = 2;
    end
end

T = table(i, A, C, B, H);
disp(T);

switch salida
    case 0
        fprintf("Salida por llegar al l�mite introducido \n");
    case 1
        fprintf("Salida por sobrepaso de tolerancia \n");
    case 2
        fprintf("Salida por sobrepaso del error \n");
end

end
