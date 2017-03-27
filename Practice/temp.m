%convert temp in F to C

ftemp = input('Enter the temp in F: ');
ctemp = (ftemp - 32)*5/9;

fprintf('temp in degrees celcius = %.2f\n ', ctemp);
