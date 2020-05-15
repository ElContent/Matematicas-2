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
        tabla.Xi(i) = string(V(itV));
        itV = itV + 1;
    else
        tabla.Xi(i) = "";
    end
end

% Creando la tabla (Resto de cabeceras -> Usando unaDD() para sacar valores)
for i = 1:length(V) % Esto son las veces que meteremos valores
    nombreCabecera = nombreCabeceraDD(i);
    for j = 1:N
        if mod(i, 2) ~= 0
            
        else
            
        end
    
end



disp(tabla);

tablaFinal = struct2table(tabla);
disp(tablaFinal);
% tabla.(nombreCabecera) = 


end
