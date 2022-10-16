x=[-6:0.1:6];

f=fuck(x);
g=fuck(x/2);
h=2.*fuck(x-3);

plot(x,f,'k-');
hold on;
plot(x,g,'b-.');
hold on;
plot(x,h,'r:');
hold on;

legend('f','g', 'h');
hold off;