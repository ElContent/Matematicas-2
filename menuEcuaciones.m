% Men� Ecuaciones
clear
clc
syms x y fun;

% Cabecera:
fprintf("### Calculadora de ecuaciones por distintos m�todos ### \n");
fprintf("Enginyeria Inform�tica - Universitat d'Alacant - Grup en Valenci� \n\n");

% Pedimos al usuario que ingrese la funci�n:
fun = input('Ingrese la funci�n: ');

% Aqu� preguntamos al usuario que m�todo quiere aplicar:
selection_bool = true;
fprintf("\n");

while selection_bool
    Selection = ["1."; "2."; "3."; "4."; "5."; "6."; "7."];
    MethodToApply = ["Bisecci�n"; "Secante"; "Regula-Falsi";...
        "Newton"; "Steffenson"; "Punto Fijo"; "Punto Fijo del Gradiente"];
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
            
            % Pedimos la tolerancia:
            tol = input('Ingrese la tolerancia: ');
            
            % Pedimos el m�ximo de error absoluto:
            errorAbsMax = input('Error absoluto m�ximo: ');
            
            bisection(fun, a, b, errorAbsMax, tol, n)
            selection_bool = false;
        
        case 2
            % M�todo de la secante:
            fprintf("M�todo de la secante: \n");
            
            % Pedimos los intervalos:
            a = input('Intervalo inferior: ');
            b = input('Intervalo superior: ');
            
            % Pedimos que ingrese el valor de N:
            n = input('Ingrese un valor de N: ');
            
            % Pedimos el valor de la tolerancia
            tol = input('Ingrese el valor de la tolerancia: ');
            
            % Pedimos el valor del error absoluto m�ximo
            error = input('Ingrese error: ');
            
            secante(fun, a, b, tol, error, n);
            selection_bool = false;
        
        case 3
            % M�todo de la Regula-Falsi:
            fprintf("M�todo de la Regula-Falsi \n");
            
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
            
            % Pedimos el punto al que vamos a aproximar:
            a = input('Punto a aproximar: ');
            
            % Pedimos la tolerancia:
            tol = input('Ingrese el valor de tolerancia: ');
            
            % Pedimos el m�ximo de error absoluto:
            errorAbsMax = input('Error absoluto m�ximo: ');
            
            % Pedimos que ingrese el valor de N:
            n = input('Ingrese un valor de N: ');
            
            newton(fun, a, errorAbsMax, tol, n)
            selection_bool = false;
            
        case 5
            % M�todo de Steffenson
            fprintf("M�todo de Steffenson: \n");
            
            % Pedimos el punto inicial:
            x0 = input('Punto inicial: ');
            
            % Pedimos la tolerancia
            tol = input('Tolerancia (Error m�ximo): ');
            
            % Pedimos el n�mero m�ximo de iteraciones:
            nmax = input('N�mero m�ximo de iteraciones: ');
            
            steffensen(x0, fun, tol, nmax);
            selection_bool = false;
            
        case 6
            % M�todo del Punto Fijo:
            fprintf("M�todo del Punto Fijo: \n");
            
            % Pedimos el punto inicial:
            A = input("Introduce el punto inicial: ");
            
            % Pedimos la tolerancia:
            tol = input("Introduce la cota de la tolerancia: ");
            
            % Pedimos el error:
            err = input("Introduce la cota del error en la funci�n: ");
            
            % Pedimos el valor de N: 
            N = input("Introduce la cota de iteraciones: ");
            
            puntoFijo(fun, A, tol, err, N);
            selection_bool = false;
            
        case 7
            % M�todo del Punto Fijo del Grandiente:
            fprintf("M�todo del Punto Fijo del Gradiente: \n");
            
            % Pedimos la primera coordenada del punto:
            A = input("Introduce la primera coordenada: ");
            
            % Pedimos la segunda coordenada del punto:
            B = input("Introduce la segunda coordenada: ");
            
            % Pedimos gamma:
            gamma = input("Introduce el valor de gamma: ");
            
            % Pedimos el error:
            e = input("Introduce la cota del error en la funci�n: ");
            
            % Pedimos el valor de N:
            N = input("Introduce la cota de iteraciones: ");
            
            pfijoGradiente(fun, gamma, A, B, e, N);
            selection_bool = false;
        
        otherwise
            % Error de selecci�n
            fprintf("Error: Selecci�n fuera de rango \n\n");
    end
end
