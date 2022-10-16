t = [0:0.01:2];
f = exp((-3+j*6*pi)*t);

x = real(f); # �Ǽ���
y = imag(f); # �����
r = abs(f); # ũ��
p = angle(f)# ����

subplot(2,2,1);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('real part of f(t)');

subplot(2,2,2);
plot(t,y);
xlabel('t');
ylabel('y(t)');
title('imaginary part of f(t)');

subplot(2,2,3);
plot(t,r);
xlabel('t');
ylabel('r(t)');
title('absolute of f(t)');

subplot(2,2,4);
plot(t,p);
xlabel('t');
ylabel('p(t)');
title('angle of f(t)');