function pfijoGradiente(fun, gamma, A_var, B_var, e, N)

syms x y;
derX = diff(fun, x);
derY = diff(fun, y);
if not(isa(fun,'function_handle'))
    fun = matlabFunction(fun);
end
if not(isa(derX,'function_handle'))
    derX = matlabFunction(derX);
end
if not(isa(derY,'function_handle'))
    derY = matlabFunction(derY);
end

inc = 0;
salida = 0;
whileControl = true;
while whileControl == true
    i(inc + 1, 1) = inc;
    A(inc + 1, 1) = A_var;
    B(inc + 1, 1) = B_var;
    
    if inc ~= 0
        A_res = A_var - A(inc);
        B_res = B_var - B(inc);
    else
        A_res = A_var;
        B_res = B_var;
    end
    
    Modulo(inc + 1, 1) = sqrt(A_res^2 + B_res^2);
    
    A_var = A_var - gamma * derX(A_var, B_var);
    B_var = B_var - gamma * derY(A_var, B_var);
    
    % Criterios de parada:
    if inc == N
        salida = 0;
        whileControl = false;
    end
    if sqrt(A_var^2 + B_var^2) == 0
        salida = 1;
        whileControl = false;
    end
    if sqrt((A_var - A(inc + 1))^2 + (B_var - B(inc + 1))) < e
        salida = 2;
        whileControl = false;
    end
    inc = inc + 1;
end

fprintf("\n");
T = table(i, A, B, Modulo);
disp(T);

% Motivo de salida
switch salida
    case 0
        fprintf("Salida por llegar al límite introducido \n");
    case 1
        fprintf("Salida porque el módulo de la próxima iteración \n");
        fprintf("se aproxima mucho a 0 \n");
    case 2
        fprintf("Salida por sobrepaso de la cota de error \n");
end



end

