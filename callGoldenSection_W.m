function callGoldenSection(fx)

disp("Please enter (1) if you want to find the minimum of the function");
disp("Please enter (2) if you want to find the maxiumum of the function");
choice = input(": ");
if(choice == 1)   
    string = "minimum";
elseif(choice == 2)
    string = "maximum";
end
disp("Please look at graph and choose appropriate starting interval to find " + string);
figure();
fplot(fx);

a = input("Please enter the first x to the left of the " + string + ": ");
b = input("Please enter the second x to the right of the " + string + ": ");
delta = input("Please enter your tolerance level: ");

[x, y, i] = goldenSection(a, b, fx, delta, choice);

disp("The " + string + " point of  " + string + " is (" + x + "" + ", " + y + (")"));
disp("Number of iterations: " + i);

