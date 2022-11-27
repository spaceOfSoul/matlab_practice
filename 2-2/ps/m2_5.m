x = [0:0.01:4];

f = exp((1+j*2*pi)*x);

subplot(2,2,1);
plot(t,real(f));
grid on;
ylabel('Re[f(t)]');xlabel('x');

subplot(2,2,2);
plot(t,imag(f));
grid on;
ylabel('Im[f(t)]');xlabel('x');

subplot(2,2,3);
plot(t,abs(f));
grid on;
ylabel('|f(t)|');xlabel('x');

subplot(2,2,4);
plot(t,angle(f));
grid on;
ylabel('<f(t)');xlabel('x');