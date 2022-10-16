x=[-2:0.01:2];
func1 = @(x) (x.^2).*(exp(-abs(x)));
func2 = @(x) (x.^2).*exp(-abs(x)).*(abs(x)<1.5);
y=func1(x);
subplot(2,1,1);
plot(x,y);
subplot(2,1,2);
y=func2(x);
plot(x,y);