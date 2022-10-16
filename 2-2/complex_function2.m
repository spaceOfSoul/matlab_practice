x = [-2:0.05:2];
y = [-2:0.05:2];
[X,Y]= meshgrid(x,y);

Z = X+j*Y;

f = conj(Z);

u = real(f);
v = imag(f);
r = abs(f);
p = angle(f);

subplot(2,2,1);
mesh(x,y,u);
xlabel('x');ylabel('y');zlabel('u');title('real part: Re[f(z)]');

subplot(2,2,2);
mesh(x,y,v);
xlabel('x');ylabel('y');zlabel('v');title('real part: Im[f(z)]');

subplot(2,2,3);
mesh(x,y,r);
xlabel('x');ylabel('y');zlabel('r');title('magnitude:|f(z)|');

subplot(2,2,4);
mesh(x,y,p);
xlabel('x');ylabel('y');zlabel('p');title('phase: <f(z)');