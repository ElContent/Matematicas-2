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
    Selection = ["1."; "2."; "3."; "4."; "5."];
    MethodToApply = ["Bisección"; "Secante"; "Regula Falsi"; "Newton"; "Steffenson"];
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
            % Método de la secante:
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
            % Método de la Regula Falsi:
            % Pedimos los intervalos:
            a = input('Intervalo inferior: ');
            b = input('Intervalo superior: ');
            
            % Pedimos la tolerancia:
            tol = input('Ingrese el valor de tolerancia: ');
            
            % Pedimos el máximo de error absoluto:
            errorAbsMax = input('Error absoluto máximo: ');
            
            % Pedimos que ingrese el valor de N:
            n = input('Ingrese un valor de N: ');
            
            regulafalsi(fun, a, b, tol , errorAbsMax, n)
            selection_bool = false;
            
        case 4
            % Método de Newton:
            fprintf("Método de Newton: \n");
            a = input('Punto a aproximar: ');
            newton(fun, a)
            selection_bool = false;
            
        case 5
            % Método de Steffensen
            fprintf("Método de Steffensen: \n");
            x0 = input('Punto inicial: ');
            tol = input('Tolerancia (Error máximo): ');
            nmax = input('Número máximo de iteraciones: ');
            
            steffensen(x0,fun,tol,nmax);
            selection_bool = false;
        
        otherwise
            % Error de selección
            fprintf("Error: Selección fuera de rango \n\n");
    end
end
