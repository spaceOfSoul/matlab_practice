A=1; % ���� 1
f=1.2e9; % ���ļ� 1.2 GHz 
T=1/f; % �ֱ�
#theta=(38/180)*pi; % ����
t=[ 0 : T/32 : T] ;
y=A*sin(2*pi*f*t); 
plot(t , y) ; 
title( 'sin'); 
ylabel('y'); 
xlabel('nm'); 