function [x,y,i] = goldenSection_J(b1,b2,f,error,choice)
a=b1;
b=b2;
phi = (1+sqrt(5))/2;
min = 0;
x1 = b-((b-a)/phi);
x2 = a+((b-a)/phi);
ymin1 = f(x1);
ymin2 = f(x2);
iterations=0;
if(choice == 1)
    while(abs(b-a)>error)
        if(abs(b-a)<=error)
            x1=(a+b)/2;
        break
        elseif(ymin1 >= ymin2)
            a = x1;
            x1 = x2;
            x2 = a+((b-a)/phi);
            ymin1 = f(x1);
            ymin2 = f(x2);
        else
            b = x2;
            x2 = x1;
            x1 = b-((b-a)/phi);
            ymin1=f(x1);
            ymin2=f(x2);
        end
        iterations=iterations+1;
    end
    x=x1
    y=ymin1
    i=iterations
%     fprintf('min found at the point:[ %g , %g ] \n',x1,ymin1)
%     fprintf('Iterations: %d\n',iterations)
else
    a=b1;
    b=b2;
    phi = (1+sqrt(5))/2;
    min = 0;
    x1 = b-((b-a)/phi);
    x2 = a+((b-a)/phi);
    ymin1 = f(x1);
    ymin2 = f(x2);
    error = 0.000001;
    iterations=0;
    
    while(abs(b-a)>error)
        if(abs(b-a)<=error)
            x1=(a+b)/2;
            break;
        elseif(ymin1 <= ymin2)
            a = x1;
            x1 = x2;
            x2 = a+((b-a)/phi);
            ymin1 = f(x1);
            ymin2 = f(x2);
        else
            b = x2;
            x2 = x1;
            x1 = b-((b-a)/phi);
            ymin1=f(x1);
            ymin2=f(x2);
        end
        iterations=iterations+1;
    end
    x=x1
    y=ymin1
    i=iterations
%     fprintf('max found at the point:[ %g , %g ] \n',x1,ymin1)
%     fprintf('Iterations: %d\n',iterations)
end
    
