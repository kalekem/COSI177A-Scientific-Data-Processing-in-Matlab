%{
    Name : Cleophas Kalekem
    Date: 2/26/2917

%}

%Q3. A program that determines cos (x)  using the Tylor series expansion

%prompt the user the enter the value of angle in degrees
angle_in_degrees = input('Enter the value of an angle in degrees: ');
angle_in_radians = angle_in_degrees .*pi./180; %converts degrees to radians
n = 0;%initialize the first value n of the series
an = 1; %the first term in the series
Sn = an; %the first sum of the terms in the series
E = 0.000001; % assumes E to big inifinte number
cosine = 0;  %the cosine of the value entered

%while the estimated erros is bigger than the given minimum value
while abs(cos(angle_in_radians) - (cosine))> E 
    an = (angle_in_radians ^2*n) *((-1^n)/factorial(2*n));%add the nth term
    E = abs(an/Sn); %calculate the estimated error
    Sn = Sn + an; %add nth term into the sum
    n = n + 1; %increment the number of elements
    cosine = Sn;  % cosine takes the value of the sum
end

%print the value of cos(x)
fprintf('The value of cos(%.2f) = %.2f\n',angle_in_degrees, cosine);
