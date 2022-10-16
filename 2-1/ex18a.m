[x y]=meshgrid([-5:0.5:5], [-5:0.5:5]);
U = ones(size(x));
V = 0.2*x.*y;
L=sqrt(U.^2+V.^2); 
quiver(x,y,U./L, V./L , 0.5, 'r' ) ;
axis tight