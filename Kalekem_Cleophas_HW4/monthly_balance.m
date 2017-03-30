%{
    Name: Cleophas Kalekem
    Matlab HW4
    Prof. Praveen Chaturvedi
    3/24/2017
%}

%{
 Q2:  A person deposits $1000 in a bank. Interest is compounded monthly at
 the rate of 1% per month. Write a program which will compute the monthly 
balance, but write it only annually for 10 years (Hint: use nested loops).
 Note that after 10 years, the balance is $3300.39, whereas if interest had
 been compounded annually at the rate of 12% per year the balance would only
 have been $3105.85. Also as a second exercise, vectorize the code by removing 
the loops.
%}

%prompt the user to enter the amount deposited in a bank i.e $1000
balance = input('Enter the amount deposited in a bank: $ ');

%error checks- cannot take take negative values amount deposited
while balance <0 
    balance= input('Invalid deposit value! Enter a positive number: $ ');
end


%prompt the user to enter the interest rate
rate = input('Enter the interest rate: ');

%prompt the user to enter the number of years the money is invested or
%borrowed for
time = input('Enter the number of years the money is invested or borrowed for: ');

%prompt the user to enter enter the number of times the interest rate is 
%compounded per year
n = input('Enter the number of times the interest is compounded per year: ');

rate = rate/100; %the decimal interest rate value

%non-vectorized code
%prints the balance from year 1 - year 10 (or to the upper bound year that the
%user entered
%the amount in the last year is the total compounded balance accumulated
%for that long
fprintf('\n');
disp('Non-vectorized code results: ');
for i = 1: time
    for j = 1: n
        balance = balance * ((1+rate));
    end
   fprintf('Balance[Year %i]: %.2f\n', i, balance);
end

%vectorized code
%prints only the total compounded balance at the last year
%Remove the comments to run it. Note: You have to comment out the above
%nested for loop to get the correct results for this vectroized part!
%{
fprintf('\n');
disp('Vectorized code results:');
balance =balance *((1+rate))^(time*n);
fprintf('Total Balance at [Year %i] = %.2f\n',time, balance);
%}