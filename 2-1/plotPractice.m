t = [0.1:0.01:10];

f=exp(-sqrt(t));

subplot(1,3,1);
semilogx(t,f);
semilogx(t,f);
title('log axis X');
xlabel('t');
ylabel('f(t)');
grid on;

subplot(1,3,2);
semilogy(t,f);
title('log axis Y');
xlabel('t');
ylabel('f(t)');
grid on;

subplot(1,3,3);
loglog(t,f);
title('log axis XY');
xlabel('t');
ylabel('f(t)');
grid on;