function newton(fun, A_var)
% Algoritmo Newton-Raphson
% Calculamos la derivada:
der = diff(fun);

% Definimos el error:
error = 1.e-5;

% Definimos el valor para la divergencia:
maxVal = 10000.0;

% Preparamos el bucle:
i = 0;
while_out = false;
while (i <= 100 && while_out == false)
    i = i + 1;
    h_var = subs(fun, A_var) / subs(der, A_var);
    C_var = A_var - h_var;
    
    % Condición de parada:
    if (abs(h_var) >= maxVal || abs(subs(fun, C_var)) < error)
        while_out = true;
    end
    
    % Preparamos la tabla:
    inc(i, 1) = i;
    A(i, 1) = double(A_var);
    h(i, 1) = double(h_var);
    C(i, 1) = double(C_var);
    funInC(i, 1) = double(subs(fun, C_var));
    T = table(inc, A, h, C, funInC);
    
    A_var = C_var;
end

disp(T);
fprintf("Total iteraciones: %d \n", i);

if abs(h_var) >= maxVal
    fprintf('La solución DIVERGE \n\n');
else
    fprintf('La solución CONVERGE \n\n');
end
% Fin de la Funcion
