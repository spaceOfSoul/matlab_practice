x = [-2:0.1:2];
y = [-2:0.1:2];

[X Y] = meshgrid(x,y);
z = X+Y*j;

#plot
sublot(2,2,2);
f=exp(z)./(z.^2+1);
mesh(X,Y,abs(z));

#title
z = 1+2*j;
f=exp(z)./(z.^2+1);
title(num2str(f));
