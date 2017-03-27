%{
    Name: Cleophas Kalekem
    Date: 2/24/2017
    Instructor: Praveen Chaturvedi
%}

%Q1: A program that draws the orbit of Halley's Comet and the earth
%(assumes that the earth is circular)

%formula  r  = a(1 - e^2)/(1- cos theta)

%Initialize the constants

%value of a
a = 17.9;

%value of eccentricity, e
e = 0.967276;

%the value of theta
range = 500;
theta = 0:2*pi/range:2*pi;

%the value of variable r
r = a*(1-e^2)./(1-e*cos(theta));

%the values of x-axes
x = r.*cos(theta);

%the values of y-cordinates
y = r.*sin(theta);

%plot the polar figure ranging from 0 to 2*pi
%the figure assumes that the earth is circular
%since we are plotting an elliptical figure, we add 'axis equal'
%at the end of the program
plot(x, y, 'b');
xlabel('r cos(theta)');
ylabel ('r sin (theta)');
title('Orbit of Halleys commet');
axis equal;















