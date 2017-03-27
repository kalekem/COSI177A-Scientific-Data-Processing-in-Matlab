%{
    Name: Cleophas Kalekem
    Date: 2/23/2017
%}

%Q4: A program that calcuates the fibonacci sequence for a given number n
%of terms

%set the first number to zero then the second to 1
firstNumber = 0;
secondNumber = 1;
nextNumber = 0 ;%stores the value for the next number in the sequence

%Prompt the user the enter the number of terms in the sequence

n = input('Enter the number of terms in the sequence\n');

%restricts the function to only positive numbers
%the function only calculates the fib sequence once the user a positive
%number

%use of while loop to check for errors
while n < 0
    disp('Invalid value!')
    n = input('Enter the number of terms in the series\n');
end

%displays the first n terms in the sequence
fprintf('The first %d terms of the Fibonacci series are:-\n', n);

%for loop to add the previous two numbers to get the current value
for num = 1: n
    if num <=1
        nextNumber = num;
    else
        nextNumber = firstNumber + secondNumber;
        firstNumber = secondNumber;
        secondNumber = nextNumber;
        fprintf(', ');
        
    end
    
    %displays the n numbers in the sequence
    fprintf('%d', nextNumber);
      
end
fprintf('\n');
        






















