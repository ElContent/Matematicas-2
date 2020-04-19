function bisection(fun, A_var, B_var, e, N)
syms x;

Ya = subs(fun, A_var);
Yb = subs(fun, B_var);

if(Ya*Yb)>0
    fprintf('\n\n No existe raiz en el intervalo [Xa, Xb] \n\n');
    fprintf('Ingrese un nuevo intervalo o una nueva función');
end

fprintf('\n\n');
Xant = 0;
inc = 1;
continuar = 1;

while (inc <= N && continuar == 1)
    C_var = (A_var+B_var)/2;
    Xact = C_var;
    Yr = subs(fun, C_var);
    Ea = abs((Xact-Xant)/Xact) * 100;
    
    i(inc, 1) = inc;
    A(inc, 1) = A_var;
    B(inc, 1) = B_var;
    C(inc, 1) = C_var;
    H(inc, 1) = (B_var - A_var)/2;
    Error(inc, 1) = Ea;
    T = table(i, A, C, B, H, Error);
    
    if Ea < e
        continuar = 0;
    end
    
    if(Ya * Yr) < 0
        B_var = C_var;
    elseif (Ya * Yr) == 0
        continuar = 0;
    else
        A_var = C_var;
    end
    
    Xant = C_var;
    inc = inc + 1;
    
end

disp(T)
fprintf("Raíz exacta: %d \n", C_var);
fprintf("Número de iteraciones: %d \n", inc - 1);

end

