f = @(x,y) -y/x;
xspan = [0.5 1.5];
y0 = 2;
h=0.05;
[x y]=eulode(f, xspan, y0,h) ;
ry=1./x; % 실제의 해(이론값)
abs_error=abs(ry-y); % 절대오차
rel_error=(abs_error)./abs(ry)*100; % 상대오차
A=[x ; y ; ry ; abs_error ; rel_error];

txt = sprintf(' x(n) y(n) 실제값 절대오차 상대오차(%%)'); disp(txt); % 명령창에 출력
txt = sprintf(' %.2f %.4f %.4f %.4f %.2f\n', A);
disp(txt); % 명령창에 출력
plot(x,y,'*-r',x,ry,'b'); % 그래프 그리기
legend('Euler method', 'real solution');