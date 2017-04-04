%{
Name: Cleophas Kalekem
Instructor: Praveen Chaturvedi
Date: 4/3/2017
%}

%{
Q2.
Write a user defined function that multiplies two polynomials.
Name the function p = polymult(p1,p2). The two input arguments p1 and p2 
are vectors of the coefficient of the two polynomials. The output argument
p is the resulting polynomial.

%}

function p = polymult(p1,p2)

%stores the maximum length of the resulting product vector
maxLength = length(p1)+length(p2) -1;

%stores the vector of the coefficients of the product
p = zeros(1, maxLength);

%nested loop to multiply the two polynomials
for i =1: length(p1)
    for j = 1: length(p2)
        indexResult = i + j -1;
        p(indexResult) = p(indexResult)+ p1(i)*p2(j);
    end
end



















