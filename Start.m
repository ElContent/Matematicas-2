%%% Home %%%
% Este es el script principal del programa. Aqu� se selecciona el tema 
% con el que vamos a trabajar
clear
clc

fprintf("Programa de c�lcul per a M2 \n");
fprintf("Enginyeria Inform�tica - Universitat d'Alacant - Grup en Valenci� \n\n");

fprintf("De la programaci�: \n");
Programador = ["Jordi"; "Fran"; "Josu�"];
Codi = ["Start, menuEcuaciones, menuInterpolacion, bisection, newton, pfijoGradiente, puntoFijo";...
    "regulafalsi i secante";...
    "steffensen"];

selection_bool = true;
while selection_bool
    Referencia = ["1."; "2."];
    Contenido = ["Ecuaciones"; "Interpolaci�n"];
    qstn = table(Referencia, Contenido);
    disp(qstn);
    go = input("Introduzca la referencia del contenido a ejecutar: ");
    fprintf("\n");
    
    switch go
        case 1
            % Resoluci�n de Ecuaciones:
            oldpath = path;
            path(oldpath, 'Ecuaciones');
            run('menuEcuaciones')
            path(oldpath);
            selection_bool = false;
        
        case 2
            % Interpolaci�n:
            oldpath = path;
            path(oldpath, 'Interpolacion');
            run('menuInterpolacion')
            path(oldpath);
            selection_bool = false;
            
        otherwise
            % Error de selecci�n:
            fprintf("Error: Selecci�n fuera de rango \n\n");
    end
end
