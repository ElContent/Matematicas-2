% Menú de Interpolación:
clear
clc

% Cabecera:
fprintf("### Calculadora d'interpolació per distints mètodes ### \n");
fprintf("Enginyeria Informàtica - Universitat d'Alacant - Grup en Valencià \n\n");

selection_bool = true;
while selection_bool
    Referencia = ["1."; "2."; "3."; "4."; "5."; "6."; "7."];
    Metode = ["Lagrange"; "Tablas de Neville"; "Diferencias Divididas";...
        "Hermite"; "Splines"; "Newton"; "La Grange"];
    qstn = table(Referencia, Metode);
    disp(qstn);
    go = input("Introduzca la referencia del contenido a ejecutar: ");
    fprintf("\n");
    
    switch go
        case 1
            % Lagrange:
            [YPOINT, XPOINT, X] = vectorino();
            lagrange(X,XPOINT, YPOINT);
            
            selection_bool = false;
            
        case 2
            % Tablas de Neville
            fprintf("Encara no s'ha implementat \n");
            selection_bool = false;
            
        case 3
            % Diferencias Divididas
            syms x;
            fun = input('Introduce la función: ');
            
            % Creando el vector:
            V = input('Introduce un vector (recuerda usar corchetes): ');
            
            % Llamada a la función:
            fprintf("¿Quieres imprimir la matriz sucia? \n");
            control = false;
            while control == false
                booleano = input('Responde y o n: ');
                if booleano == 'y'
                    difDiv(fun, V, true);
                    control = true;
                end
                if booleano == 'n'
                    difDiv(fun, V, false);
                    control = true;
                end
                fprintf("\n");
            end
            
            selection_bool = false;
            
        case 4
            % Hermite
            fprintf("Encara no s'ha implementat \n");
            selection_bool = false;
            
        case 5
            % Splines
            % Pedimos la función:
            fun = input("Introduce la función: \n");
            
            % Pedimos un vector:
            Vec = input("Introduce un vector: \n");
            
            % Llamada a la función:
            jsSplines(fun, Vec);
            
            selection_bool = false;
            
        case 6
            % Newton
            x = input('Introduce el vector x: ');
            y = input('Introduce el vector y: ');
            xi = input('Introduce un punto para sustituir en el polnomio: ');
            
            [Iteraciones, Polinomio, yi] = iNewton(x, y, xi)
            
            selection_bool = false;
        
        case 7
            % La Grange:
            web('https://www.youtube.com/watch?v=Vppbdf-qtGU');
            selection_bool = false;
            
        otherwise
            % Error de selección:
            fprintf("Error: Selección fuera de rango \n\n");
    end
end
