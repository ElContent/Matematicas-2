function jsHermite(V, N)
% N -> Cantidad de polinomios que vamos a imprimir
if N > 0 
    if N >= 1
        N = N - 1;
    end
    
% Plot the first five Hermite polynomials
       n = 0:N;
       y = hermite(n,V);
       plot(V, y, 'LineWidth', 2)
       %title('Hermite polynomials for N = 0 to 4')
       set(gca,'YLim',[-10 10])
       legend(strcat('N=',num2str(n')),'Location','SouthEast')
end
end

