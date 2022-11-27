t = [0:0.01:6];

x = exp(-t/2).*cos(4*pi*t);
y = exp(-t/2).*sin(4*pi*t);
z = t;

plot3(x,y,z);
grid on;
title('trajectory');