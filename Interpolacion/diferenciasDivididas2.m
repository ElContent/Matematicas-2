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

% Nombre de la cabecera:
for i = 1:length(V)
    if i >= 2
        coma = coma + ",";
    else
        coma = "";
    end %endif
end %endfor
nombreCabecera = "[" + coma + "]";


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






disp(tabla);

tablaFinal = struct2table(tabla);
disp(tablaFinal);
% tabla.(nombreCabecera) = 


end
