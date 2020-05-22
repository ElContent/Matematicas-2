function jsHermite(N)
% N -> Cantidad de polinomios que vamos a imprimir
if N > 0 
    if N >= 1
        N = N - 1;
    end
    
% Plot the first five Hermite polynomials
       x = -3:0.05:3;
       n = 0:N;
       y = hermite(n,x);
       plot(x, y, 'LineWidth', 2)
       xlabel('X')
       ylabel('H_n(X)')
       %title('Hermite polynomials for N = 0 to 4')
       set(gca,'YLim',[-25 25])
       %legend(strcat('N=',num2str(n')),'Location','SouthEast')
end
end

