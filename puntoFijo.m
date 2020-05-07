function puntoFijo(fun, A_var, e, tol, N)
if not(isa(fun,'function_handle'))
    fun = matlabFunction(fun);
end

inc = 0;
whileControl = true;
salida = 0;

while whileControl == true
    X_var = fun(A_var);
    H_var = abs(X_var - A_var);
   
    % Creación de las columnas de la tabla:
    i(inc + 1, 1) = inc;
    A(inc + 1, 1) = A_var;
    Fa(inc + 1, 1) = X_var;
    H(inc + 1, 1) = H_var;
    
    inc = inc + 1;
    A_var = X_var;
    
    % Condiciones de break:
    if inc == N
        salida = 0;
        whileControl = false;
    end
    if H_var <= tol
        salida = 1;
        whileControl = false;
    end
    if abs(fun(X_var)) <= e
        salida = 2;
        whileControl = false;
    end
    
end

fprintf("\n");
T = table(i, A, Fa, H);
disp(T);

% Mensaje de salida:
switch salida
    case 0
        fprintf("Salida por llegar al límite introducido \n");
    case 1
        fprintf("Salida por sobrepaso de tolerancia \n");
    case 2
        fprintf("Salida por sobrepaso del error \n");
end

fprintf("\n");
fprintf("Recuerda que para el correcto funcionamiento de este método, \n");
fprintf("se supone que has sumado X a la función que has introducido. \n");
end

