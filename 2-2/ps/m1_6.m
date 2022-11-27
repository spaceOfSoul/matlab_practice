x = [-2:0.01:2];
t = [0.1:0.001:100];

#functions
f = x.^2;
g = x.^3;
r = sqrt(x+2);
p = exp(-2.*(x+2));
y = exp(-x).*cos(pi.*x);
z = (1/sqrt(2*pi)).*exp(-sqrt(t));

subplot(2,3,1);
plot(x,f);
title('(1)');
xlabel('f(x)');ylabel('x');
grid on;

subplot(2,3,4);
plot(x,g);
title('(2)');
xlabel('g(x)');ylabel('x');
grid on;

subplot(2,3,2);
plot(x,r);
title('(3)');
xlabel('r(x)');ylabel('x');
grid on;

subplot(2,3,5);
plot(x,p);
title('(4)');
xlabel('p(x)');ylabel('x');
grid on;

subplot(2,3,3);
plot(x,y);
title('(5)');
xlabel('y(x)');ylabel('x');
grid on;

subplot(2,3,6);
loglog(t,z);
title('(6)');
xlabel('z(t)');ylabel('t');
grid on;

gtext('201091057 Changhyun Yu');