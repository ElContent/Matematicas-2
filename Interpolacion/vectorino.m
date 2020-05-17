function [POINTS, XVEC, YVEC]=vectorino()
    XVEC = input('Introduce el vector x: ([1, 2, 3,... n]): ');
    YVEC = input('Introduce el vector y: ([1, 2, 3,... n]): ');
    
    Pi = input('\nInt P INICIAL: ');
    Pp = input('Int P DIVISION: ');
    Pf = input('Int P FINAL: ');
    
    POINTS = [Pi: Pp: Pf];
end