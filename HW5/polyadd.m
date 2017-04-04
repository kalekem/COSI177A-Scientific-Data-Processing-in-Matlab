%{
Name: Cleophas Kalekem
Instructor: Praveen Chaturvedi
4/3/2017
%}

%{
Write a user-defined function that adds or subtracts two polynomials of any
order. Name the function p = polyadd(p1, p2, operation). The first two input
arguments p1 and p2 are the vectors of the coefficients of the two polynomials. 
(If the two polynomials are not of the same order, the function add the necessary 
zero elements to the shorter vector.) The third input argument operation is
a string that can be either add or sub for adding or subtracting the polynomials,
respectively, and the output argument is the resulting polynomial.
Write your own function and do not use MATLAB functions.
%}

function p = polyadd(p1, p2, operation)

%To add(subtract) two polynomials, add(subtract) their vectors of coeffients
%If one vector is shorter, must stick enough zeros in front
%of it so same size as longer

p1_length = length(p1); %calculates the length of vector p1
p2_length = length(p2); %calculates the length of vextor p2 

%check the sizes of the two vectors, p1 and p2
%if the length of p1 is less than the length of p2, calculate their
%differences and add zeros to the beginning of p1 equal to the length
%differences. Sample applies to p2
if p1_length < p2_length
    spaces = p2_length - p1_length;
    p1 = [zeros([1, spaces]),p1];
else
    spaces = p1_length - p2_length;
    p2 =[zeros([1,spaces]), p2];
    
end

%use switch to check the type of the operator the user passes.
%the operator can be 'add' for addition or 'sub' for subtraction
switch(operation)
    case 'add'
        p = p1 + p2;
    case 'sub'
        p =  p1 - p2;
end
 
























