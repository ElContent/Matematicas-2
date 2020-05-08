function secante(fun, A_var, B_var, tolerancia, e, N)
syms x;
inc = 1;
if not(isa(fun,'function_handle'))
    fun = matlabFunction(fun);
end

loop_bool = true;

    while (loop_bool == true)
        if(abs(subs(fun, A_var)) > abs(subs(fun, B_var)))
            aux = A_var;
            A_var = B_var;
            B_var = aux;
        end

        h = (fun(A_var)*(B_var-A_var))/(fun(B_var)-fun(A_var));
        c = A_var-h;
        
        i(inc, 1) = inc;
        A(inc, 1) = A_var;
        B(inc, 1) = B_var;
        C(inc, 1) = c;
        H(inc, 1) = h;
        funC(inc, 1) = fun(c);

        B_var = c;       
        
        T = table(i, A, B, H, C, funC);

        if inc >= N 
            loop_bool = false;
            disp(T);
            disp("Número de iteraciones máximo alcanzado.");
        elseif abs(subs(fun,c)) <= e
            loop_bool = false;
            disp(T);
            disp("El valor absoluto de funC es menor al error e.");
        elseif abs(h) <= tolerancia
            loop_bool = false;
            disp(T);
            disp("El valor absoluto de h es menor a la tolerancia.");
        end
        inc = inc + 1;
    end
end