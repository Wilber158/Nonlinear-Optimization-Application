function [x, y, i] = goldenSection_W(a, b, fx, delta, choice)
phi = (1 + sqrt(5))/2;
x1 = b - ((b-a)/phi);
x2 = a + ((b-a)/phi);
y1 = fx(x1);
y2 = fx(x2);
i = 0;
if(choice == 1)
    while(abs(b-a) > delta)
        if(y1 >= y2)
            a = x1;
            x1 = x2;
            x2 = a + ((b-a)/phi);
            y1 = fx(x1);
            y2 = fx(x2);
        else
            b = x2;
            x2 = x1;
            x1 =  b - ((b-a)/phi);
            y1 = fx(x1);
            y2 = fx(x2);
        end
        i = i + 1;
    end
elseif(choice == 2)
         while(abs(b-a) > delta)
            if(y1<=y2)
                a = x1;
                x1 = x2;
                x2 = a + ((b-a)/phi);
                y1 = fx(x1);
                y2 = fx(x2);
            else
                b = x2;
                x2 = x1;
                x1 =  b - ((b-a)/phi);
                y1 = fx(x1);
                y2 = fx(x2);
                i = i + 1;
            end
         end
end
x = (a+b)/2;
y = fx(x);
end