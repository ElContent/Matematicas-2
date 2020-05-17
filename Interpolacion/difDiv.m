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
xa = V;
ya = Y;
for w = 1:length(V) + 1
    ds = num2str(abs(D(1, w)));
    % Los valores numéricos de la matriz ds en las coordenadas (1,w)
    % se transforman en string, cuyos valores no serán modificados después,
    % y serán mostrados al final en la presentación de resultados.
    if w > 1
        if V(w - 1) < 0 
            % Si la multiplicación de x por (w-1) es menor a cero, 
            % se agrega un símbolo + al polinomio resultado.
            sg1 = '+';
        else    % En caso contrario, el símbolo será -
            sg1 = '-';
        end
    end

    if D(1, w) < 0
        sg2='-';
    else
        sg2='+';
    end

    if w == 1
        acum = num2str(D(1, 2));
        %se crea un contador de nombre acum que irá almacenando
        % el polinomio obtenido, y lo mostrará el final
    elseif w == 2
        polinact = ['(x' sg1 num2str(abs(V(w - 1))) ')' ];
        actual = [ds '*' polinact];
        acum = [acum sg2 actual];
    else
        polinact = [polinact '.*' '(x' sg1 num2str(abs(V(w - 1))) ')' ];
        actual = [ds '*' polinact];
        acum = [acum sg2 actual];
    end
    
end

% Presentacion de resultados
fprintf('Los valores de X e Y son: \n');
fprintf('\tX = ');
disp(xa);
fprintf('\tY = ');
disp(ya);

fprintf('El polinomio interpolación obtenido es: \n');
fprintf('%s ', acum);
fprintf('\n');

end

