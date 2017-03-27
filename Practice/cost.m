%calculates the cost of a tank containment

r = input('Enter the radius of the tank: ');
c = 32430/r + 428*pi*r;

fprintf('The cost of a containment tank with radius %.2f =$ %.2f\n', r, c);