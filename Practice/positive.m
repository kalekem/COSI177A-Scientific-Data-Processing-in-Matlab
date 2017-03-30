%Loops until the user enters a positive number

inputnum = input('Enter a positive number\n');
while (inputnum <0)
    inputnum = input('Invali number. Enter a positive numberhsnc s\n');
end
fprintf('you entered %d\n', inputnum);