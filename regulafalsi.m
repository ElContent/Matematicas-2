function regulafalsi(fun, A_var, B_var, tolerancia, e, N)
syms x;
inc = 1;

loop_bool = true;

    while (loop_bool == true)
        if(abs(subs(fun, A_var)) > abs(subs(fun, B_var)))
            aux = A_var;
            A_var = B_var;
            B_var = aux;
        end

        h = (subs(fun, A_var)*(A_var-B_var))/(subs(fun,B_var));
        c = A_var-h;
        
        if (subs(fun, A_var)*subs(fun,c)) < 0
            B_var = c;
        else
            A_var = c;
        end

        i(inc, 1) = inc;
        A(inc, 1) = A_var;
        B(inc, 1) = B_var;
        C(inc, 1) = c;
        H(inc, 1) = h;
        funA(inc, 1) = subs(fun, A_var);
        funB(inc, 1) = subs(fun, B_var);
        funC(inc, 1) = subs(fun, c);

        T = table(i, A, B, C, H, funA, funB, funC);

        if inc == N 
            loop_bool = false;
        else if abs(subs(fun,c)) <= e
                loop_bool = false;
            else if abs(h) <= tolerancia
                    loop_bool = false;
                end
            end 
        end  
        inc = inc + 1;
    end
        disp(T);
end