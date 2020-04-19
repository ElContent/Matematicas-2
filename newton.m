function [x,iter]=newton(x0,f,df)
% Algoritmo Newton-Raphson
N = 100; eps = 1.e-5; %Defino max. Numero. iteraciones y error
maxval = 10000.0; % Defino valor para divergencia
x=x0;
while (N>0)
    xn = x-f(x)/df(x);%Función de Newton
    if abs(f(xn))<eps
       x=xn;iter=100-N;
       return;
    end
    if abs(f(x))>maxval
       disp(['# de Iteraciones = ',num2str(iter)]);
       error('La Solucion Diverge');
       break
    end
    N = N - 1;
    x = xn;
end
error('No Converge');
% Fin de la Funcion
