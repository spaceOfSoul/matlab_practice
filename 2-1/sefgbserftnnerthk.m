h=0.1;
x=[1:h:2];

y(1)=1;
for n=1:length(x)-1
  y(n+1) = (0.8*x(n)*y(n))*h + y(n);
endfor
plot(x,y, '*:b');
hold on;

ry=exp(-4/5).*exp(4/5.*(x.^2));
plot(x,ry, '-r');

