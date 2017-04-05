%{
Name: Cleophas Kalekem
Instructor: Praveen Chaturvedi
Date: 4/4/2017
%}

%{
Q3: 
x =[2 5 6 8 9 13 15]
y =[7 8 10 11 12 14 15]

a)	Use linear least-square regression to determine the coefficients
 m and b in the function y = mx + b that best fits the data
b)	Make a plot that shows the function and the data points
%}

%the function polyfit computes least-squares best fit of data points to a
%polynomial -> p = polyfit(x, y, n), where p is the vector of the
%coefficient of the polynomial that fits the data. x is a vector with
%horizontal coordinate of the data points (independent variable). y is a
%vector with the vertical coordinate of the data points (dependent
%variable). n is the degree of the polynomial

x = [2 5 6 8 9 13 15]; % x vector for x-axis data points
y = [7 8 10 11 12 14 15];% y vector for y-axis data points
p = polyfit(x,y,1); %a vector p using polyfit function. Degree of 1
m = p(1); % the value of m that best fits the data
b = p(2); %the value of b that best fits the data
fprintf('m = %.2f\n', m);
fprintf('b = %.2f\n', b);
xp = 2:1:15; %xp vector to be used for plotting the polynomial
yp = polyval(p, xp); %vector yp with values of the polynomial at each xp
plot(x,y,'o', xp, yp); %plot of the seven points and the polynomial
title('Polyfit Function & Data Points');
xlabel('x-axis');
ylabel('y-axis');





















