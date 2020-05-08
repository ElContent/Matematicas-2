function [x,n_iter]=steffensen(x0,f,tol,nmax)
exito_bool = false;
i=1;
	while(i<=nmax)
		x1=subs(f,x0);
        x2=subs(f,x1);
		x_nuevo=double(x0-(x1-x0)^2/(x2-2*x1+x0));
		error= double(abs(x_nuevo-x0));
       
        n_iteracion(i, 1) = i;
        x0_inicial(i, 1) = double(x0);
        ERROR(i, 1) = double(error);
        salida(i, 1) = double(x_nuevo);
        tabla = table(n_iteracion, x0_inicial, ERROR, salida);
        
         if error < tol
            fprintf('Procedimiento completado satisfactoriamente, salida: %f \n', x_nuevo);
            exito_bool = true;
            break
         end
        
        x0=double(x_nuevo);
		i=i+1;
    end
    disp(tabla);
	n_iter=i-1;
	x=x0;
    if exito_bool == false
        fprintf('El método ha fracasado, no se ha encontrado una solución con error menor a la tolerancia, error: %f \n', error);
    end
end