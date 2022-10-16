 [X Y] =meshgrid([-5:0.5:15],[-4:0.5:4]) ;
 U=ones(size(X));
  V=(4-X)./(Y.^3+2) ; 
  L = sqrt(U.^2 + V.^2);
  quiver(X,Y,U./L, V./L, 'b');
 axis tight;
 hold on;
 Z= Y.^4+8*Y-16*X+2*X.^2 ;
  contour(X,Y,Z) ; 