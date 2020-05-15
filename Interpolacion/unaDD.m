function [RET] = unaDD(fun, V, it)
syms x;
if not(isa(fun,'function_handle'))
    fun = matlabFunction(fun);
end

thisX = V(it);
nextX = V(it + 1);

RET = (fun(nextX) - fun(thisX)) / (nextX - thisX);

end

