function diferenciasDivididas2(fun, V)
% fun es la funcion con la que vamos a trabajar
% A es el punto a aproximar
% array es el vector de los valores con los que trabajaremos.
% imprimirTabla es un dato booleano que usaremos por si queremos imprimir
% la tabla por pantalla o por si no queremos.
syms x;
if not(isa(fun,'function_handle'))
    fun = matlabFunction(fun);
end

N = 2*length(V) - 1;

% Creando la tabla (Primera Cabecera -> Valores Vector):
itV = 1;
for i = 1:N
    if mod(i, 2) ~= 0
        Xi(i, 1) = string(V(itV));
        itV = itV + 1;
    else
        Xi(i, 1) = "";
    end
end

% f[Xi]:
itV = 1;
nombreCabecera = nombreCabeceraDD(1);
for i = 1:N
    if mod(i, 2) ~= 0
        Fxi(i, 1) = string(fun(V(itV)));
        itV = itV + 1;
    else
        Fxi(i, 1) = "";
    end
end

% f[,,]:
itV = 1;
nombreCabecera = nombreCabeceraDD(2);
Fxi2(1,1) = "";
for i = 2:N
    if mod(i, 2) == 0
        Fxi2(i, 1) = unaDD(fun, V, itV);
        itV = itV + 1;
    else
        Fxi2(i, 1) = "";
    end
end


T = table(Xi, Fxi, Fxi2);
disp(T);

end
