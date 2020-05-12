function [XVEC, YVEC, POINTS]=vectorino()

    Xi = input('Int X INICIAL: ');
    Xf = input('Int X FINAL: ');
    Xp = input('Int X DIVISION: ');
    
    Yi = input('\nInt Y INICIAL: ');
    Yf = input('Int Y FINAL: ');
    Yp = input('Int Y DIVISION: ');
    
    Pi = input('\nInt P INICIAL: ');
    Pf = input('Int P FINAL: ');
    Pp = input('Int P DIVISION: ');      
    
    XVEC = [Xi: Xp :Xf];
    YVEC = [Yi: Yp :Yf];
    POINTS = [Pi: Pp: Pf];
end