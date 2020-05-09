% Interpolacion de Newton
function [C, p, yi] = iNewton(x, y, xi)
% Inicializa variables
n = length(x); %n elementos del vector
C = zeros(n);  %Inicilizo una matriz
C(:,1) = y(:);  % Las columnas de la matriz será el vector y

% Obtener la tabla de diferencias
for j = 2:n
    for i = 1:n-j+1
        C(i,j) = (C(i+1, j-1)-C(i,j))/(x(i+j-1)-x(i));
    end
end

% Calcular el dato interpolado
xt = 1;
yi = C(1,1);
for j=1:n-1
    xt = xt.*(xi-x(j));
    yi = yi+C(1,j+i)*xt;
end

% Construir el polinomio
p = num2str(C(1,1));
xx = x*-1;
for j=2:n
    signo = '';
    if C(1,j) >= 0
        signo = '+';
    end
    xt ='';
    for i=1:j-1
        signo2 = '';
        if xx(i) >= 0
            signo2 = '+';
        end
        xt = strcat(xt, '*(x', signo2,num2str(xx(i)),')');
    end
    p = strcat(p, signo,num2str(C(1,j)), xt);
end