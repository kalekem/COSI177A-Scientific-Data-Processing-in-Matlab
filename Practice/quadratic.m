%calculates the roots of quadratic equation
a = input('Enter a: ');
b = input('Enter b: ');
c = input('Enter c: ');

dis = sqrt(b^2 - 4*a*c);
x1 = 0;
x2 = 0;

if dis > 0
    x1 = (-b + dis)/(2*a);
    x2 = (-b - dis)/(2*a);
    fprintf('Roots of %.2f and %.2f\n', x1, x2);
elseif dis ==0
    x1 = -b/(2*a);
    fprintf('Equal roots of %.2f\n', x1);
    
else
    fprintf('Complex roots\n');
end

    
    
    
    
    
    
    
    
    