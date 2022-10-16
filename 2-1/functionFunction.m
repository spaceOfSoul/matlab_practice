f2=@(x) exp(x).*sin(pi*x-pi/8)
fplot(f2, [0 2]) ; 
grid ; 
hold on
x=fzero(f2, 0) ; 
plot(x, f2(x), 'o')
x=fzero(f2, 1) ; 
plot(x, f2(x), 's') 