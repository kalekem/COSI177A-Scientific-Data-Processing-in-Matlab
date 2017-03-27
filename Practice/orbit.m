%plots orbit of Halley's Comet

a = 17.9;
e = 0.967276;
theta = 0:2*pi/400:2*pi;
r = a*(1-e^2)./(1-e*cos(theta));

x = r.*cos(theta);
y = r.*sin(theta);

plot(x, y, 'b');
xlabel('x-axis');
ylabel('y-axis');
title('Orbit of Halleys Comet');
axis equal;