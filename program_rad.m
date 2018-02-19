clear all
disp('   ')

disp('Program za igranje sa funkcijama')
q=0;
flag=1;
i=1;
count=100;
while(count ~= 0)
    izbornik()
    count=input('Unosim svoj izbor: ');
    if count == 1
        %flag = input('Unesi funkciju koju zelis ili stisni nula za info koje su vam funkcije dostupne');
        %if(flag == 0)
        %    disp('sin, cos, tan');
        %end
        fun=input('Unesi naziv funkcije: ','s');
        
        switch fun
            case 'sin'
                figure(i);
                t=[0:0.1:2*pi];
                s=sin(t);
                plot(t,s);
                i=i+1;
            case 'cos'
                figure(i);
                t=[0:0.1:2*pi];
                c=cos(t);
                plot(t,c);
                i=i+1;
            case 'tan'
                figure(i);
                t=[(-pi/2)+0.01:0.01:(pi/2)-0.01];
                ta=tan(t);
                plot(t,ta);
                i=i+1;
            otherwise
                disp('Pokusaj ponovo');
        end
    end
    if (count==2)
        xx1=input('Unesi prvi operand: ');
        yy1=input('Unesi drugi operand: ');
        r=kalkulator(xx1,yy1)
    end
    if(count==3)
        q=input('Unesi broj figure-a koji želiš urediti');
        figure(q);
        funkc=input('Usput mi napisi koja je to funkcija','s');
        switch funkc
            case 'sin'
                p=s;
            case 'cos'
                p=c;
            case 'tan'
                p=ta;
            otherwise
                disp('Pokusaj ponovo');
        end
        color=input('Unesi boju kojom zelis da je graf obojan(g-green,r-red,c-cyan,m-magenta,...)','s');
        plot(p,color);
        
        gridovi=input('Ako zelis grid, upisi 1: ');
        if(gridovi==1)
            grid on;
        end
    end
end
i=0;
disp('---------------------') 
disp('---------------------')
disp('------L-I-J-E-P------')
disp('---------------------')
disp('---------------------')
disp('---P-O-Z-D-R-A-V!----')
disp('---------------------')
disp('---------------------')
