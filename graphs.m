%Plot of one point

%Create the coordinate variables and plot a red '*'


x = 11;
y = 48;
plot (x, y, 'r*')

%change te axes and label them
axis([9 12 35 55])
xlabel ('Time')
ylabel('Temp')
%}

%put a title on the plot
title ('Time and Temp')

%To plot more than one point, create x and y vectors to store the values of
%the (x, y) points


xAxis = 1:6;
yAxis = [ 1 5 3 9 11 8];
plot(xAxis, yAxis)












