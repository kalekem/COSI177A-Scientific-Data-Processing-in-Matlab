%calculates the combined resistance of 3 resistors

R1 = input('Enter R1: ');
R2 = input('Enter R2: ');
R3 = input('Enter R3: ');

RT = 1/(1/R1+1/R2+1/R3);

fprintf('Combined resistance = %.2f\n', RT);