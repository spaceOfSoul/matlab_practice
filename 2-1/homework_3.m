t=[0:0.01:1];

x=t;
y=2*cos(8*pi*t);
z=2*sin(8*pi*t);
subplot(2,2,1);
plot3(x,y,z);
title('(1)');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

x=2*sin(8*pi*t)
y=t;
z=2*cos(8*pi*t);
subplot(2,2,2);
plot3(x,y,z);
title('(2)');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

x=2*e.^(-2*t).*cos(8*pi*t);
y=2*e.^(-2*t).*sin(8*pi*t);
z=sqrt(t);
subplot(2,2,3);
plot3(x,y,z);
title('(3)');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

x=[-8:0.01:8];
y=[-8:0.01:8];
[X,Y] = meshgrid(x,y);
z=sin( sqrt(X.^2+Y.^2) )./sqrt(X.^2+Y.^2);
subplot(2,2,4);
surf(X,Y,z);
title('(4)');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;