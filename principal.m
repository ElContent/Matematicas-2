% Este el arranque del programa
clear
clc
syms x fun;

% Pedimos al usuario que ingrese la función:
fun = input('Ingrese la función: ');

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
            
            % Pedimos los intervalos:
            a = input('Intervalo inferior: ');
            b = input('Intervalo superior: ');
            
            % Pedimos que ingrese el valor de N:
            n = input('Ingrese un valor de N: ');
            
            % Pedimos el máximo de error absoluto:
            errorAbsMax = input('Error absoluto máximo: ');
            
            bisection(fun, a, b, errorAbsMax, n)
            selection_bool = false;
        
        case 2
            % MÃ©todo de la secante:
            fprintf("Este método no ha sido implementado todavía \n");
            selection_bool = false;
        
        case 3
            % MÃ©todo de la Regula Falsi:
            % Pedimos los intervalos:
            a = input('Intervalo inferior: ');
            b = input('Intervalo superior: ');
            
            % Pedimos la tolerancia:
            tol = input('Ingrese el valor de tolerancia: ');
            
            % Pedimos el máximo de error absoluto:
            errorAbsMax = input('Error absoluto máximo: ');
            
            regulafalsi(fun, a, b, tol , errorAbsMax, n)
            selection_bool = false;
            
        case 4
            % Método de Newton:
            fprintf("Método de Newton: \n");
            a = input('Punto a aproximar: ');
            newton(fun, a)
            selection_bool = false;
        
        otherwise
            % Error de selección
            fprintf("Error: Selección fuera de rango \n\n");
    end
end
