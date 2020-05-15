function dd3(fun, V)
syms x;
if not(isa(fun,'function_handle'))
    fun = matlabFunction(fun);
end

Y = fun(V);
N = length(V);
Q = zeros(N, N);
Q(:, 1) = Y';
C = 2;
K = 1;

for j = 2:1:N
    for i = C:1:N
        Q(i, j) = (Q(i, j-1) - Q(i-1, j-1)) / (V(i) - V(i - K));
    end
    K = K + 1;
    C = C + 1;
end

fprintf("Matriz Q: \n");
disp(Q);

Nx = 2*length(V) - 1;
Ny = length(V) + 1;

resultados = zeros(Nx, Ny);

itV = 1;
for i = 1:Nx
    if mod(i, 2) ~= 0
        resultados(i, 1) = V(itV);
        itV = itV + 1;
    end
end

itV = 1;
for i = 1:Nx
    if mod(i, 2) ~= 0
        resultados(i, 2) = Q(itV, 1);
        itV = itV + 1;
    end
end

for i = 1:Nx
    itV1 = 1;
    itV2 = 1;
    for j = 2:Ny
        if (j <= i + 1) && (i <= Nx + 2 - j) && (mod(i, 2) ~= 0) && mod(j, 2) == 0
            resultados(i, j) = Q(itV1, j+1);
            %% Estoy aqui
            itV1 = itV1 + 1;
        end
        
        if (j <= i + 1) && (i <= Nx + 2 - j) && (mod(i, 2) == 0) && mod(j, 2) ~= 0
            
            itV2 = itV2 + 1;
        end
        
    end
end

disp(resultados);

end

