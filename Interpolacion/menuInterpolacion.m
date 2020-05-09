% Men� de Interpolaci�n:
clear
clc

% Cabecera:
fprintf("### Calculadora d'interpolaci� per distints m�todes ### \n");
fprintf("Enginyeria Inform�tica - Universitat d'Alacant - Grup en Valenci� \n\n");

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
            fprintf("Encara no s'ha implementat \n");
            selection_bool = false;
            
        case 2
            % Tablas de Neville
            fprintf("Encara no s'ha implementat \n");
            selection_bool = false;
            
        case 3
            % Diferencias Divididas
            fprintf("Encara no s'ha implementat \n");
            selection_bool = false;
            
        case 4
            % Hermite
            fprintf("Encara no s'ha implementat \n");
            selection_bool = false;
            
        case 5
            % Splines
            fprintf("Encara no s'ha implementat \n");
            selection_bool = false;
            
        case 6
            % Newton
            fprintf("Encara no s'ha implementat \n");
            selection_bool = false;
        
        case 7
            % La Grange:
            web('https://www.youtube.com/watch?v=Vppbdf-qtGU');
            selection_bool = false;
            
        otherwise
            % Error de selecci�n:
            fprintf("Error: Selecci�n fuera de rango \n\n");
    end
end