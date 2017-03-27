%{
    Name: Cleophas Kalekem
    Matlab HW4
    Prof. Praveen Chaturvedi
    3/24/2017
%}

%{
 Q4: Computers the monthly balance of an amount that a person deposits and
 its interest rate compounded annually. The results should return the
 balance amount compounded for a certain period of time, for example in
 this case balance in 10 years

%}

%prompt the user to enter the amount deposited in a bank i.e $1000
balance = input('Enter the amount deposited in a bank: ');

%prompt the user to enter the interest rate
rate = input('Enter the interest rate: ');

%prompt the user to enter the number of years the money is invested or
%borrowed for
time = input('Enter the number of years the money is invested or borrowed for: ');

%prompt the user to enter enter the number of times the interest rate is 
%compounded per year
n = input('Enter the number of times the interes is compounded per year: ');
%variable to store the monthly balance

%error checks- cannot take take negative values amount deposited
while balance <0 
    balance= input('Invalid deposit value! Enter a positive number:  ');
end

%{
 A = P (1 + r/n)^ (nt) - formula for calculating compound interest
 where:
    A= the future value of the investment/loan, including interest
    P= the future value of the investment/loan, including interest
    r = the annual interest rate (decimal)
    n = the number of times that interest is compounded per year
    t = the number of years the money is invested or borrowed for

%}

rate = rate/100; %the decimal interest rate value

for i = 1: time
    for j = 1: n
        balance = balance *((1+rate));
    end
   fprintf('Balance: %.2f\n', balance);
end

%{
vectorized code
fprintf('\n');
%balance = balance *(1+rate);
fprintf('%.2f\n', balance);
%}




    
    
    


%{
 A person deposits $1000 in a bank. Interest is compounded monthly at the
 rate of 1% per month. Write a program which will compute the monthly
 balance, but write it only annually for 10 years (Hint: use nested loops).
 Note that after 10 years, the balance is $3300.39, whereas if interest
 had been compounded annually at the rate of 12% per year the balance 
would only have been $3105.85.
 Also as a second exercise, vectorize the code by removing the loops.
%}