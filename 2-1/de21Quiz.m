t=[0:0.001:0.2];
g = 7*sin(2*pi*t*40 + 77*(pi/180));
subplot(2,2,1);
plot(t,g);
xlabel('x');
ylabel('g(x)');
title('1. 20191057 yu changhyun');

x=[-5:0.01:5];
f = (x<-1).*0+ (-1<=x&x<1).*(x.^2+1)+(1<=x&x<2).*2+(2<=x&x<=4).*2.*exp(-x+2)+ 0
subplot(2,2,2);
plot(x,f);
xlabel('x');
ylabel('f(x)');
title('2. 20191057 yu changhyun');

[x y] = meshgrid([-2:0.01:2], [-2:0.01:2]);
f = exp(-sqrt((x.^2 + y.^2)/7));
subplot(2,2,3);
mesh(x,y,f);
xlabel('x');
ylabel('y');
zlabel('z');
title('3. 20191057 yu changhyun');

clear
h=0.1;
x=[1:h:2];
y(1)=1;
for n=1:length(x)-1
  y(n+1)=(0.8*x(n)*y(n))*h + y(n);
end
ry = exp(-4/5).*exp(4/5.*(x.^2));
subplot(2,2,4);
plot(x,y,'*:b');
hold on;
plot(x,ry, '-r');
xlabel('x');
ylabel('y');
title('4. 20191057 yu changhyun');
legend('Euler method', 'real solution', 'location', 'northwest');
