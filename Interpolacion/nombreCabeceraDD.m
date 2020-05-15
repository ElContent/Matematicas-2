function [nombreCabecera] = nombreCabeceraDD(Col)

% Nombre de la cabecera:
for i = 1:Col
    if i >= 2
        coma = coma + ",";
    else
        coma = "";
    end %endif
end %endfor
nombreCabecera = "[" + coma + "]";
end

