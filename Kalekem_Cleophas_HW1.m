%Q1: <==================================================>
%converts temperature in degrees Fahrenheit(F) to degrees Celcius (C) 
%prompt the user to enter the value of the temperature in Fahrenheit(F)
disp('Q1');
ftemp = input ('Enter the temperature in Fahrenheit(F): ');
%converts Fahrenheit to degrees celcius (C)
ctemp = (ftemp - 32) * 5/9;
fprintf('The value in degrees celcius = %.2f\n', ctemp);


%Q2: <========================================================>
%Calculates the combined resistance, RT, for three resistors R1, R2, R3
%prompts the user to the enter the value of the first resistor, R1
fprintf('\n');
disp('Q2');
R1 = input('Enter the value of R1: ');
%prompt for the value of R2
R2= input ('Ente the value of R2: ');
%promt for the value of R3
R3 = input('Enter the value of R3: ');
%Calculates the value of the combined resistance, RT
RT = 1/(1/R1+1/R2+1/R3);
%display the output of the combined resistance
fprintf('The value of the combined resistance, RT = %.2f\n', RT);


%Q3: <==========================================================>
%Calculates the value of the Lorentz factor
fprintf('\n');
disp('Q3');
vSpeed = input ('Enter the value of speed, v: ');
%stores the value for the given speed of light
cSpeed = (3 * 10^8);
%formula that calculates the value of the Lorentz factor
Lorentz = 1/ (sqrt (1 - (vSpeed^2/cSpeed^2)));
%display the results
fprintf('The value of the Lorentz factor = %.2f\n', Lorentz);


%Q4: <===========================================================>
%Calculates the cost of a container tank
%prompt the user to enter the radius of the tank
fprintf('\n');
disp('Q4');
radius = input ('Enter the radius of the tank: ');
%the formula for calculating the cost based on the radius of the tank
cost = 32430/radius + 428*pi*radius;
fprintf('The cost of the tank = $%.2f\n', cost);








