function [RET] = unaDD(fun, V, i, j)
syms x;
if not(isa(fun,'function_handle'))
    fun = matlabFunction(fun);
end

thisX = V(i);

if (i + 1) > length(V)
    nextX = thisX;
else
    nextX = V(i + 1);
end


RET = (fun(nextX) - fun(thisX)) / (nextX - thisX);

end

