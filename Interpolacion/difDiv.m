function difDiv(fun, V, imprimirSucio)

syms x;
if not(isa(fun,'function_handle'))
    fun = matlabFunction(fun);
end

% PRIMERA PARTE:
% La tabla de las diferencias divididas
Y = fun(V);
D = zeros(length(V), length(Y) + 1);
D(:, 1) = V';
D(:, 2) = Y';
for k = 3:length(V) + 1
    for j = 1:length(V) + 2 - k
        D(j, k) = (D(j + 1, k - 1) - D(j, k - 1)) / (D(j + k - 2, 1) - D(j, 1));
    end
end

Nx = 2 * length(V) - 1;
Ny = length(Y) + 1;
M = zeros(Nx, Ny);

for i = 1:length(V) + 1
    Vec = D(:, i);
    Vec = Vec';
    
    aux = zeros(1, Nx);
    cont = 1;
    if i == 1
        inicio = 1;
    else
        inicio = i - 1;
    end
    for j = inicio:2:Nx
        aux(j) = Vec(cont);
        cont = cont + 1;
    end
    M(:, i) = aux';
    
end

if imprimirSucio == true 
    disp(D);
end
disp(M);

% SEGUNDA PARTE
% El polinomio


end

