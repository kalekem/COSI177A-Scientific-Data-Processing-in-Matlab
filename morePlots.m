%Create two different plots in two different figure windows 

x = 1:5;
y1 = [2 11 6 9 3 ];
y2 = [4 5 8 6 2];

%put a bar chart in figure 1
figure(1);
bar(x, y1);

%plot y1 and y2 on one plot in Figure 2 with a legend 

figure(2)
plot(x, y1, 'k')
hold on
plot(x, y2, 'ro')
grid on 
legend('y1', 'y2')



















