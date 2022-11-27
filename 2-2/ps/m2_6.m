x = [-4:0.1:4];
y = [-4:0.1:4];

[X Y] = meshgrid(x,y);

Z = X+j*Y;
f = Z./(Z.^2 - 3);

subplot(2,2,1);
mesh(X,Y,real(f));
title('Re[f(z)]');
grid on;

subplot(2,2,2);
mesh(X,Y,imag(f));
title('Im[f(z)]');
grid on;

subplot(2,2,3);
mesh(X,Y,abs(f));
title('|f(z)|');
grid on;

subplot(2,2,4);
mesh(X,Y,angle(f));
title('<f(z)');
grid on;
