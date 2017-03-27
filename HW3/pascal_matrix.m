%{
    Name: Cleophas Kalekem
    Date: 3/9/2017
    Instructor: Praveen Chaturvedi
%}

%Q2:the program creates an nxn symmetric Pascal matrix

%prompt the user to enter the size/length/number of matrix you want to
%create
n = input('Enter the size n of the matrix: ');

%{
the formula for calculating symmetric pascal's matrix is 
 Sij=(i+j-2)!/(i-1)!(j-1)! 
%}
for i =1: n
    for j = 1: n
        %calculates the factorial of the numerator in the formula
        numFact = 1;
        for k = 1:(i+j-2)
            numFact=numFact*k;
        end
        %calculates the factorial of the first part of the denominator
        iFact = 1;
        for x = 1: (i-1)
            iFact=iFact*x;
        end
        %calculates the factorial of the second part of the denominator
        jFact = 1;
        for z = 1:j-1
            jFact = jFact*z;
        end 
        %displays the pascal's matrix
        pascal = numFact/(iFact*jFact);
        fprintf('%d\t', pascal);
    end
    fprintf('\n');
end


