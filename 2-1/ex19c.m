f = @(x,y) -y/x;
xspan = [0.5 1.5];
y0 = 2;
h=0.05;
[x y]=eulode(f, xspan, y0,h) ;
ry=1./x; % ������ ��(�̷а�)
abs_error=abs(ry-y); % �������
rel_error=(abs_error)./abs(ry)*100; % ������
A=[x ; y ; ry ; abs_error ; rel_error];

txt = sprintf(' x(n) y(n) ������ ������� ������(%%)'); disp(txt); % ���â�� ���
txt = sprintf(' %.2f %.4f %.4f %.4f %.2f\n', A);
disp(txt); % ���â�� ���
plot(x,y,'*-r',x,ry,'b'); % �׷��� �׸���
legend('Euler method', 'real solution');