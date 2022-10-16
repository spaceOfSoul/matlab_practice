function [x,y] = eulode(dydx,xspan,y0,h)
% 입력: dydx : 함수 f 의 이름. y’=f(x,y) , y(x0)=y0
% xspan = [x0, xf] (x0 는 x 의 초기값, xf 는 x 의 마지막 값)
% y0 = y 의 초기값
% h = step size
% 출력: x = vector of independent variable
% y = vector of solution for dependent variable
if nargin<4,error('at least 4 input arguments required'),end
xi = xspan(1);xf = xspan(2);
if ~(xf>xi),error('upper limit must be greater than lower'),end
x = (xi:h:xf); N = length(x);
% if necessary, add an additional value of x
% so that range goes from x = xi to xf
if x(N)<xf
x(N+1) = xf;
N = N+1;
end
y = y0*ones(1,N); % pre allocate y to improve efficiency
for n = 1:N-1 %implement Euler's method
y(n+1) = y(n) + dydx(x(n),y(n))*(x(n+1)-x(n));
end