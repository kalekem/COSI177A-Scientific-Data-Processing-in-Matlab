%more plot functions

%plots sin(x) and cos(x) in the same Figure Window for
%values of x ranging from 0 to 2*pi

xFun = 0:2*pi/40:2*pi;
yFun = sin(xFun);

plot (xFun, yFun, 'ro')
hold on

yFun = cos(xFun);
plot(xFun,yFun, 'b+')

legend ('sin', 'cos')
xlabel ('x')
ylabel('sin(x) or cos(x)')
title ('sin and cos on one graph')
