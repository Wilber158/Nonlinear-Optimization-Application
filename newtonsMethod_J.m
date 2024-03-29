function [x,y,i] = newtonsMethod_J(x0,f,error)

f = sym(f);
alpha=0.3943;
gus1= diff(f);
gus1 = matlabFunction(gus1);
gus2= diff(f,2);
gus2 = matlabFunction(gus2);
xnext=x0-(alpha*((gus1(x0)/gus2(x0))));
iterations = 0;
while(abs(xnext-x0) > error)
    iterations=iterations+1;
    x0 = xnext;
    xnext = x0 - (alpha * (gus1(x0)/gus2(x0)));
end
f=matlabFunction(f);
% fprintf('Point found at the point:[ %g , %g ] \n',xnext,y(x0));
% fprintf('iterations: %d\n',iterations);
x=xnext
y=f(xnext)
i=iterations