%count positive numbers entered by a user
%{
n = input('Enter a positive number: ');
while( n < 0)
   fprintf('You entered %d. Please enter a positive number\n', n);
   n = input('Enter a positive number: ');
end


%}
%{
count = 0;
num = input('Enter a positive number: ');
while(num >0)
    count = count + 1;
    num =input('Enter a positive number: ');
end
fprintf('You entered %d positive numbers\n', count);
%}