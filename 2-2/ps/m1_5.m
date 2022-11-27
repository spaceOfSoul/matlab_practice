a = 2;
f = 6000;
de = 27;

x = [0: 0.000001 :4*(1/f)];
y=a*sin(2*pi*f*x+de);

plot(x,y);