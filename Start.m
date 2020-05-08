%%% Home %%%
% Este es el script principal del programa. Aquí se selecciona el tema 
% con el que vamos a trabajar

clear
clc

fprintf("Programa de càlcul per a M2 \n");
fprintf("Enginyeria Informàtica - Universitat d'Alacant - Grup en Valencià \n\n");

selection_bool = true;
while selection_bool
    Referencia = ["1."; "2."];
    Contenido = ["Ecuaciones"; "Interpolación"];
    qstn = table(Referencia, Contenido);
    disp(qstn);
    go = input("Introduzca la referencia del contenido a ejecutar: ");
    fprintf("\n");
    
    switch go
        case 1
            % Resolución de Ecuaciones:
            run('menuEcuaciones')
            selection_bool = false;
        
        case 2
            % Interpolación:
            run('menuInterpolacion')
            selection_bool = false;
            
        otherwise
            % Error de selección:
            fprintf("Error: Selección fuera de rango \n\n");
    end
end
