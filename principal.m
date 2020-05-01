% Este el arranque del programa
clear
clc
syms x fun;

% Pedimos al usuario que ingrese la funci�n:
fun = input('Ingrese la funci�n: ');

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
            
            % Pedimos los intervalos:
            a = input('Intervalo inferior: ');
            b = input('Intervalo superior: ');
            
            % Pedimos que ingrese el valor de N:
            n = input('Ingrese un valor de N: ');
            
            % Pedimos el m�ximo de error absoluto:
            errorAbsMax = input('Error absoluto m�ximo: ');
            
            bisection(fun, a, b, errorAbsMax, n)
            selection_bool = false;
        
        case 2
            % M�todo de la secante:
            % Pedimos los intervalos:
            a = input('Intervalo inferior: ');
            b = input('Intervalo superior: ');
            
            % Pedimos que ingrese el valor de N:
            n = input('Ingrese un valor de N: ');
            
            tol = input('Ingrese el valor de la tolerancia: ');
            
            error = input('Ingrese error: ');
            
            secante(fun, a, b, tol, error, n);
            selection_bool = false;
        
        case 3
            % M�todo de la Regula Falsi:
            % Pedimos los intervalos:
            a = input('Intervalo inferior: ');
            b = input('Intervalo superior: ');
            
            % Pedimos la tolerancia:
            tol = input('Ingrese el valor de tolerancia: ');
            
            % Pedimos el m�ximo de error absoluto:
            errorAbsMax = input('Error absoluto m�ximo: ');
            
            % Pedimos que ingrese el valor de N:
            n = input('Ingrese un valor de N: ');
            
            regulafalsi(fun, a, b, tol , errorAbsMax, n)
            selection_bool = false;
            
        case 4
            % M�todo de Newton:
            fprintf("M�todo de Newton: \n");
            a = input('Punto a aproximar: ');
            newton(fun, a)
            selection_bool = false;
        
        otherwise
            % Error de selecci�n
            fprintf("Error: Selecci�n fuera de rango \n\n");
    end
end
