function lagrange(X, POINTX, POINTY)
longi = true;

if length(POINTX)~= length(POINTY)
    disp('Vectores de tamaños distintos');
    longi = false;
end

if longi == true
    a = polyfit(POINTX, POINTY, length(POINTX)-1);
    
    xp = X;
    
    yp = polyval(a,xp);
    
    plot(x,y,'o',xp,yp,'-');
    
end
end