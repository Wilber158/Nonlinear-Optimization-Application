function callNewtons(f)

disp("Please enter (1) if you want to find the minimum of the function");
disp("Please enter (2) if you want to find the maxiumum of the function");
choice = input(": ");
if(choice == 1)   
    string = "minimum";
elseif(choice == 2)
    string = "maximum";
end
disp("Please look at graph and choose appropriate starting point to find the " + string);
figure();
fplot(f);
x = input("Please enter the x value near the " + string + ": ");

delta = input("Please enter your tolerance level: ");

[x, y, i] = newtonsMethod(x, f, delta);

disp("The " + string + " is (" + x + "" + ", " + y + (")"));
disp("Number of iterations: " + i);


