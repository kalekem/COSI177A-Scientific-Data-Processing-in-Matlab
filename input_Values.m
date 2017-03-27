prompt ='What is the value of x \n';
x = input(prompt);
y = x*10;
fprintf('Total value = %d\n', y);

%prompt the user to enter string values
yourFirstName = 'Enter your firstname name: \n ';
firstName = input(yourFirstName, 's');
fname = string(firstName);
yourSecondName = 'Enter your second name: \n';
secondName =input(yourSecondName, 's');
sname =string(secondName);
fullname = strcat(fname, {' '}, sname);
disp(fullname);
%disp(strcat('Full name: '+ fname, {' '}, sname) );

%string manipulation
%contains keyword
if contains(fullname, 'Cleophas')
    disp('Cleophas exists in the name: '+fullname);
else
    disp('Cleophas does not exist in the name: '+fullname);
end


























