%{
    Name: Cleophas Kalekem
    Date: 2/23/2017
    Instructor: Praveen Chaturvedi
%}

%Q2: A script that provides a solution to a general quadratic equation

%The formula for a quadratic equation is y = a*x^2 + b*x + c where a , b
%and c are constants

%prompt the user to enter the value of constant a
a = input('Enter the value of constant a: ');

%prompt the user to enter the value of constant b
b = input('Enter the value of constant b: ');

%prompt the user to enter the value of constant c
c = input('Enter the value of constant c: ');

%stores the discriminant part of the equation
dis = sqrt(b^2 - 4*a*c);
x1 =0; % stores the first distinct root for the equation
x2 =0; % stores the second distinct root for the equation


%generates two distinct root value(s)
if dis > 0
    x1= (-b + dis)/(2*a);
    x2 = (-b - dis)/(2*a);
    fprintf('roots of %.1f and %.1f\n\n', x1, x2);
%generates equal roots  
elseif dis == 0
    x1= -b/(2*a);
    fprintf('equal roots of %.1f \n\n', x1);
    
%complex roots
else
    fprintf('complex roots\n\n');
end

    
    

   