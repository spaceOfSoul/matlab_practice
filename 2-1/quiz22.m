t = [0:0.0001:0.1];
f = 70*cos(2*pi*t*70 + 70*(pi/180));
subplot(2,2,1);
plot(t,f);
xlabel('t');
ylabel('f(t)');
title('1. 20191057 yu changhyun');

x = [-2:0.01:4.5];
f = (x<0).*2.*exp(x)+(0<=x&x<1).*2+(1<=x&x<3).*((x.^2)+4.*x+5)+(3<=x).*(1+cos(x-3));
subplot(2,2,2);
plot(x,f);
func = @(z) (z<0).*2.*exp(z)+(0<=z&z<1).*2+(1<=z&z<3).*((z.^2)+4.*z+5)+(3<=z).*(1+cos(z-3))
S=integral(func,-2,4.5);
text(-1,15,['Area under the curve is ', num2str(S)])
xlabel('x');
ylabel('f(x)');
title('2. 20191057 yu changhyun');

fid=fopen('quiz22.dat','r');
a = fscanf(fid,"%f %c %f %f %f %f",[6 inf]);
a=a';
x = a(:,1);
q=a(:,4);
subplot(2,2,3)
plot(x,q);
fclose(fid);
fo = fopen('prob3.dat','w');
tmp = [x q];
fprintf(fo,"%f %f\n",tmp);
fclose(fo);
xlabel('x');
ylabel('q(x)');
title('3. 20191057 yu changhyun');

clear
h = 0.2
x=[-2:h:2];
[X Y]=meshgrid([-2:h:2], [-2:h:2]);
U = ones(size(X));
V = X.*Y;
L=sqrt(U.^2+V.^2); 
ry = (2/5)*exp((1/2).*(x.^2));
subplot(2,2,4);
quiver(X,Y,U./L, V./L , 0.5, 'g' ) ;
hold on;
plot(x,ry,'b');
axis tight;
xlabel('x');
ylabel('y');
title('4. 20191057 yu changhyun');