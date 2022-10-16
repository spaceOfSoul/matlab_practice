x=[-2:0.01:2];
y=[-2:0.01:2];
[X,Y]=meshgrid(x,y);
Z = e.^-(X.^2+y.^2);
surf(X,Y,Z);