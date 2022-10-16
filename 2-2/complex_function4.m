x = [-2:0.1:1];
y = [-2:0.1:2];
[X,Y]= meshgrid(x,y);

Z = X+j*Y;

f = 2*(Z.^2) + 2*Z + 2;

r = abs(f); 

surf(X,Y,r);
hold on;
contour(X,Y,r);
xlabel('Re(z)');ylabel('Im(z)');