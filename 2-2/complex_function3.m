x = [-1:0.05:1];
y = [-1:0.05:1];
[X,Y]= meshgrid(x,y);

Z = X+j*Y;

f = Z.^2;

r = abs(f); # magnitude
p = angle(f);

subplot(2,2,1);
surf(X,Y,r);
xlabel('Re(z)');ylabel('Im(z)'); zlabel('|f(z)|');
title('magnitude-3D');

subplot(2,2,3);
contour(X,Y,r,30);
xlabel('Re(z)');ylabel('Im(z)'); zlabel('magnitude contour');
title('magnitude-contour');

subplot(2,2,2);
surf(X,Y,p);
xlabel('Re(z)');ylabel('Im(z)'); zlabel('<f(z)');
title('phase-3D');

subplot(2,2,4);
contour(X,Y,p,30);
xlabel('Re(z)');ylabel('Im(z)'); zlabel('phase contour');
title('phase-contour')