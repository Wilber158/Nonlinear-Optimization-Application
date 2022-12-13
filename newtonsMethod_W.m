function [xk, y, i] = newtonsMethod_W(x, f, delta)

a = 0.3943;
%turning 
fprime1 = diff(f);
fprime1 = matlabFunction(fprime1);
fprime2 = diff(f, 2);
fprime2 = matlabFunction(fprime2);
i = 0;
xk = x - (a * (fprime1(x) / fprime2(x)));

while(abs(xk-x) > delta)
    x = xk;
    xk = x - (a * (fprime1(x)/fprime2(x)));
    i = i + 1;
end

f = matlabFunction(f);
y = f(xk);

