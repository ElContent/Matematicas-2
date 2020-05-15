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

i = 1;
% Creando la tabla:
tabla.cabecera = "Xi";
tabla.col1 = 


end
