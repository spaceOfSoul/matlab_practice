myf1=@(x) 8*exp(-0.25*x).*sin(x) ;
x=[0:0.01:6*pi];
y=myf1(x);
plot(x,y); 
grid
[xval, fval]=fminbnd(myf1, 2,7);
text(xval, fval, ['min = ' num2str(fval) ' at x = ' num2str(xval)])