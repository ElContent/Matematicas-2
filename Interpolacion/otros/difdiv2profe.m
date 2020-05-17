x=[-1 0 1 2 3 4];y=[3 0 -1 1 2 -2];
xa=x; ya=y;
% Formaci�n de las diferencias divididas a trav�s de ciclos ?for? e ?if?.
d=zeros(length(x),length(y)+1);
%zeros(n) genera una matriz de nxn con todos sus valores cero, se utiliza la longitud de y
d(:,1)=x';
d(:,2)=y';
%Se asigna valor de y? a la columna de la matriz creada anteriormente
%se hacen dos ciclos anidados
for k=3:length(x)+1
    for j=1:length(x)+2-k
        d(j,k)=(d(j+1,k-1)-d(j,k-1))/(d(j+k-2,1)-d(j,1));
    end
end

for w=1:length(x)+1
    ds=num2str(abs(d(1,w)));

%los valores num�ricos de la matriz ?ds? en las coordenadas (1,w) se transforman en ?string?, cuyos valores no ser�n modificados despu�s, y ser�n mostrados al final en ?presentaci�n de resultados?
if w>1
    if x(w-1)<0

        
%si la multiplicaci�n de x por (w-1)es menor a cero, se agrega un s�mbolo ?+? al polinomio de resultado.
        sg1='+';
    else
%en caso contrario, el s�mbolo matem�tico es ?-?.
    sg1='-';
    end
end

if d(1,w)<0
    sg2='-';
else
    sg2='+';
end

if w==1
    acum=num2str(d(1,2));

%se crea un contador de nombre ?acum? que ir� almacenando el polinomio obtenido, y lo mostrar� el final
elseif w==2
    polinact=['(x' sg1 num2str(abs(x(w-1))) ')' ];
    actual=[ds '*' polinact];
    acum=[acum sg2 actual];
else
    polinact=[polinact '.*' '(x' sg1 num2str(abs(x(w-1))) ')' ];
    actual=[ds '*' polinact];
    acum=[acum sg2 actual];
end
end
% Presentacion de resultados
fprintf('los valores de X e Y son');
disp(xa);
disp(ya);
fprintf('El polinomio interpolaci�n Newton obtenido es: %s ',acum);