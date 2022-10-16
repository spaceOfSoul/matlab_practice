A=1; % 진폭 1
f=1.2e9; % 주파수 1.2 GHz 
T=1/f; % 주기
#theta=(38/180)*pi; % 위상
t=[ 0 : T/32 : T] ;
y=A*sin(2*pi*f*t); 
plot(t , y) ; 
title( 'sin'); 
ylabel('y'); 
xlabel('nm'); 