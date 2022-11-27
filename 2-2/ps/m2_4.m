x=[-3:0.05:3];
y=[-3:0.05:3];

[X Y] = meshgrid(x,y);
f = exp(-sqrt(X.^2+Y.^2));
mesh(X,Y,f);
title('Mesh graph');
grid on;