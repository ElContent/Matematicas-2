function  imprimirTabla(N)
%IMPRIMIRTABLA Summary of this function goes here
%   Detailed explanation goes here
for i = 1:N
    Col1(i, 1) = i;
    Col2(i, 1) = 10*i;
    Col3(i, 1) = 100*i;
end

T = table(Col1, Col2, Col3);
disp(T)
end

