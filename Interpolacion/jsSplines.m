function jsSplines(fun, V)
    % fun es la función
    % V es el vector de puntos con los que trabajaremos el spline

    syms x;
    if not(isa(fun,'function_handle'))
        fun = matlabFunction(fun);
    end
    
    fun_valores = fun(V);
    
    A = spline(V, fun_valores); % Cálculo del spline
    C = A.coefs(3, :);  % Coeficientes de la función cúbica
    xx = linspace(-1, 10); % Dominio
    yy = polyval(C, xx, [], [2,1]); % Evaluamos el polinomio. OJO con el [2,1]
    ys = ppval(A, xx); % Evaluamos el spline
    
    % Dibujando el spline cúbico:
    plot(xx, yy, xx, ys, 'k-');
    

end