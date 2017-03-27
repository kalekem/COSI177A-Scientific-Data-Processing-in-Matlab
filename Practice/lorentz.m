%calculates the value of the lorentz factor
v = input ('Enter the value of speed v: ');
c = 3*10^8;

r = 1/(sqrt(1-v^2/c^2));

fprintf('The value of the lorentz factor = %.2f\n', r);