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

        i(inc, 1) = double(inc);
        A(inc, 1) = double(A_var);
        B(inc, 1) = double(B_var);
        C(inc, 1) = double(c);
        H(inc, 1) = double(h);
        funA(inc, 1) = double(subs(fun, A_var));
        funB(inc, 1) = double(subs(fun, B_var));
        funC(inc, 1) = double(subs(fun, c));

        T = table(i, A, B, C, H, funA, funB, funC);

        if inc >= N 
            loop_bool = false;
            disp(T);
            disp("N�mero de iteraciones m�ximo alcanzado.");
        else if abs(subs(fun,c)) <= e
                loop_bool = false;
                disp(T);
                disp("El valor absoluto de funC es menor al error e.");
            else if abs(h) <= tolerancia
                    loop_bool = false;
                    disp(T);
                    disp("El valor absoluto de h es menor a la tolerancia.");
                end
            end 
        end  
        inc = inc + 1;
    end
end