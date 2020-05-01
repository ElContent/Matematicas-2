function secante(fun, A_var, B_var, tolerancia, e, N)
syms x;
inc = 1;

loop_bool = true;

    while (loop_bool == true)
        if(abs(subs(fun, A_var)) > abs(subs(fun, B_var)))
            aux = A_var;
            A_var = B_var;
            B_var = aux;
        end

        h = (subs(fun, A_var)*(B_var-A_var))/(subs(fun,B_var)-subs(fun,A_var));
        c = A_var-h;
        
        i(inc, 1) = double(inc);
        A(inc, 1) = double(A_var);
        B(inc, 1) = double(B_var);
        C(inc, 1) = double(c);
        H(inc, 1) = double(h);
        funA(inc, 1) = double(subs(fun, A_var));
        funB(inc, 1) = double(subs(fun, B_var));
        funC(inc, 1) = double(subs(fun, c));

        B_var = c;       
        fprintf("Antes de table \n");
        T = table(i, A, B, C, H, funA, funB, funC);
        fprintf("Después de table \n");

        if inc > N 
            loop_bool = false;
            disp(T);
            disp("Número de iteraciones máximo alcanzado.");
        elseif abs(subs(fun,c)) < e
            loop_bool = false;
            disp(T);
            disp("El valor absoluto de funC es menor al error e.");
        elseif abs(h) < tolerancia
            loop_bool = false;
            disp(T);
            disp("El valor absoluto de h es menor a la tolerancia.");
        end  
        disp(inc);
        inc = inc + 1;
    end
end