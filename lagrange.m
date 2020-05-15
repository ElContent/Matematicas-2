function poli = lagrange(X, POINTX, POINTY)
n=size(POINTX,2);
n2=size(POINTY,2);
if n~=n2
   disp('Vectores de tamaños distintos');
   poli = NaN;
else
    poli = polyfit(POINTX, POINTY, n-1);
    
    aprox = polyval(poli,X);
    
    plot(POINTX,POINTY,'o',X,aprox,'-');
    xlim([1 4]);
    ylim([1.5 5.5]);
end
end