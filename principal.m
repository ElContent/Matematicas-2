% Este el arranque del programa
clear
clc
syms x y fun;

% Pedimos al usuario que ingrese la función:
fun = input('Ingrese la función: ');

% Pedimos los intervalos:
a = input('Intervalo inferior (o punto a aproximar): ');
b = input('Intervalo superior (0 si no se va a usar): ');

% Pedimos el porcentaje de error:
error = input('Porcentaje de error: ');

% Pedimos que ingrese el valor de N:
n = input('Ingrese un valor de N: ');

% Aquí preguntamos al usuario que método quiere aplicar:
selection_bool = true;
fprintf("\n");

while selection_bool
    Selection = ["1."; "2."; "3."; "4."];
    MethodToApply = ["Bisección"; "Secante"; "Regula Falsi"; "Newton"];
    qstn = table(Selection, MethodToApply);
    disp(qstn);
    go = input("Introduzca método: ");
    fprintf("\n");
    
    switch go
        case 1
            % Método de la bisección:
            fprintf("Método de la bisección: \n");
            bisection(fun, a, b, error, n)
            selection_bool = false;
        
        case 2
            % Método de la secante:
            fprintf("Este método no ha sido implementado todavia \n");
            selection_bool = false;
        
        case 3
            % Método de la Regula Falsi:
            fprintf("Este método no ha sido implementado todavia \n");
            selection_bool = false;
        
        case 4
            % Método de Newton:
            fprintf("Método de Newton: \n");
            newton(fun, a)
            selection_bool = false;
        
        otherwise
            % Error de selección
            fprintf("Error: Selección fuera de rango \n\n");
    end
    
end






