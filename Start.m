%%% Home %%%
% Este es el script principal del programa. Aqu� se selecciona el tema 
% con el que vamos a trabajar

clear
clc

fprintf("Programa de c�lcul per a M2 \n");
fprintf("Enginyeria Inform�tica - Universitat d'Alacant - Grup en Valenci� \n\n");

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
            run('menuEcuaciones')
            selection_bool = false;
        
        case 2
            % Interpolaci�n:
            run('menuInterpolacion')
            selection_bool = false;
            
        otherwise
            % Error de selecci�n:
            fprintf("Error: Selecci�n fuera de rango \n\n");
    end
end
