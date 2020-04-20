% Este el arranque del programa
clear
clc
syms x y fun;

% Pedimos al usuario que ingrese la funci�n:
fun = input('Ingrese la funci�n: ');

% Pedimos los intervalos:
a = input('Intervalo inferior (o punto a aproximar): ');
b = input('Intervalo superior (0 si no se va a usar): ');

% Pedimos el porcentaje de error:
error = input('Porcentaje de error: ');

% Pedimos que ingrese el valor de N:
n = input('Ingrese un valor de N: ');

% Aqu� preguntamos al usuario que m�todo quiere aplicar:
selection_bool = true;
fprintf("\n");

while selection_bool
    Selection = ["1."; "2."; "3."; "4."];
    MethodToApply = ["Bisecci�n"; "Secante"; "Regula Falsi"; "Newton"];
    qstn = table(Selection, MethodToApply);
    disp(qstn);
    go = input("Introduzca m�todo: ");
    fprintf("\n");
    
    switch go
        case 1
            % M�todo de la bisecci�n:
            fprintf("M�todo de la bisecci�n: \n");
            bisection(fun, a, b, error, n)
            selection_bool = false;
        
        case 2
            % M�todo de la secante:
            fprintf("Este m�todo no ha sido implementado todavia \n");
            selection_bool = false;
        
        case 3
            % M�todo de la Regula Falsi:
            fprintf("Este m�todo no ha sido implementado todavia \n");
            selection_bool = false;
        
        case 4
            % M�todo de Newton:
            fprintf("M�todo de Newton: \n");
            newton(fun, a)
            selection_bool = false;
        
        otherwise
            % Error de selecci�n
            fprintf("Error: Selecci�n fuera de rango \n\n");
    end
    
end






