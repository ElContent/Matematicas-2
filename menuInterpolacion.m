% Menú de Interpolación:
clear
clc

% Cabecera:
fprintf("### Calculadora d'interpolació per distints mètodes ### \n");
fprintf("Enginyeria Informàtica - Universitat d'Alacant - Grup en Valencià \n\n");

selection_bool = true;
while selection_bool
    Referencia = ["1."; "2."];
    Metode = ["Lagrange"; "La Grange"];
    qstn = table(Referencia, Metode);
    disp(qstn);
    go = input("Introduzca la referencia del contenido a ejecutar: ");
    fprintf("\n");
    
    switch go
        case 1
            % Lagrange:
            fprintf("Encara no s'ha implementat \n");
            selection_bool = false;
        
        case 2
            % La Grange:
            web('https://www.youtube.com/watch?v=Vppbdf-qtGU');
            selection_bool = false;
            
        otherwise
            % Error de selección:
            fprintf("Error: Selección fuera de rango \n\n");
    end
end
