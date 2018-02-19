function[rez] = kalkulator(x1,y1)
operator=input('Unesi operator(+,-,*,/)','s');
switch operator
    case '+'
        rez=x1+y1;
    case '-'
        rez=x1-y1;
    case '*'
        rez=x1*y1;
    case '/'
        rez=x1/y1;
    otherwise
        disp('pokusaj ponovo');
end
