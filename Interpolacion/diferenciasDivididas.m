function diferenciasDivididas(fun, A, array, imprimirTabla)
% fun es la funcion con la que vamos a trabajar
% A es el punto a aproximar
% array es el vector de los valores con los que trabajaremos.
% imprimirTabla es un dato booleano que usaremos por si queremos imprimir
% la tabla por pantalla o por si no queremos.

if not(isa(fun,'function_handle'))
    fun = matlabFunction(fun);
end

syms x;
Y = fun(array);
N = length(array);
Q = zeros(N, N);
Q(:, 1) = Y';
C = 2;
K = 1;

for j = 2:1:N
    for i = C:1:N
        Q(i, j) = (Q(i, j-1) - Q(i-1, j-1)) / (array(i) - array(i - K));
    end
    K = K + 1;
    C = C + 1;
end

fprintf("Matriz Q: \n");
disp(Q);

%
fprintf("\n");
fprintf("El polinomio P es: \n");
C = 1;
prod = 1;
P = Q(1, 1);
for j = 2:1:N
    for i = 1:1:C
        prod = prod * (x - array(i));
    end
    C = C + 1;
    P = P + prod * Q(j, j);
    prod = 1;
end

pretty(P)
valor_aprox = subs(P, A);
valor_exacto = subs(fun, A);
resta = abs(valor_aprox - valor_exacto);
fprintf("El valor aproximado es: %9.9f \n", valor_aprox);
fprintf("El valor exacto es: %9.9f \n", valor_exacto);
fprintf("El error absoluto es de: %9.9f \n", resta);
fprintf("\n");


end

