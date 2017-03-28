%{
  Name: Cleophas Kalekem
  Matlab HW4
  Prof. Praveen Chaturvedi
  3/27/2017
%}
%{
Q1:  Write a program that determines the change given back to a customer in
 a self-service checkout machine of a supermarket for purchases of up to $20.
 The program generates a random number between 0.01 and 20.00 and displays the
 numbers as the amount to be paid. The program then asks the user to enter 
payment, which can be one $1 bill, one $5 bill, one $10 bill, or one $20 bill.
 If the payment is less than the amount to be paid, an error message is displayed.
 If the payment is sufficient, the program calculates the change and lists 
the bills and/or the coins that make up the change, which has to be composed 
of the least number each of bills and coins. For example, if the amount to be
 paid is $2.33 and a $10 bill is entered as payment, then the change is 
one $5 bill, two $1 bill, two quarters, one dime, one nickel, and two pennies.

%}
% a+ (b-a)* rand(1,1) generates a random number in range a to b
a = 0.01;
b = 20.00;
r = a + (b - a) * rand(1,1);

%prompt the user to enter the payment. The payment can be one $1 bill,
%one $5 bill, one $10 bill, or $20 bill. 
payment = input('Enter payment either as $1, $5, $10 or $20 bills: $ ');
fprintf('Amount to be paid: $%.2f\n', r);

%If the payment is less than the amount to be paid, an error 
%message is displayed
while r > payment
    disp('Not enough amount!');
    payment= input('Enter payment either as $1, $5, $10 or $20 bills: $');
end

change = payment - r; % the amount of the change received
penny = 0; %pennies
nickel = 0; %nickels
dime = 0; %dimes
quarter = 0; %quarters
one= 0; %$1 bills
five = 0; %$5 bills
ten= 0; % $10 bills
twenty = 0; %$20 bills

%prints the amount of change received
fprintf('Change: $%.2f\n\n', change);

%computes the change and splits it into $1, $5, $10, $20 bills and
%quarters, dimes, nickels and pennies.The while loop ensures that the
%change is not less than 0
while change > 0.01
    if change >=20
        twenty = twenty + 1;
        change = change - 20.00;    
    elseif change >= 10
        ten = ten + 1;
        change = change - 10.00;
    elseif change >= 5
        five = five + 1;
        change = change - 5.00;
    elseif change >= 1 
        one = one + 1;
        change = change - 1.00;
    elseif change >= 0.25
        quarter = quarter + 1;
        change = change - 0.25;
    elseif change >= 0.10
        dime = dime + 1;
        change = change - 0.1;
    elseif change >= 0.05
        nickel = nickel + 1;
        change = change - 0.05;
    else
        penny = penny + 1;
        change = change - 0.01;
    end 
end

%displays the results into $20, $10, $5, $1 bills and quarters, dimes,
%dimes and nickels and indicates how many of each category is contained in
%the change
fprintf('Your change is comprised of: \n\n');
fprintf('$20 bill\t $10 bill\t $5 bill\t $1 bill\t Quarters\t Dimes\t Nickels \tPennies\n');
fprintf('%5d\t %7d\t %7d\t %7d\t %7d\t %7d\t %7d\t %7d\n',twenty, ten, five, one, quarter, dime,nickel, penny);

