subplot(2,2,1)
t=[-2:0.1:2] ; 
y=t.^2; 
plot(t,y)
subplot(2,2,2)
theta=[0:pi/100:pi]; 
r=sin(theta); 
polar(theta,r)
subplot(2,2,3)
x=[0:0.1:5]; 
y=exp(-x.^2); 
semilogy(x,y)
subplot(2,2,4)
x=1:7 ; 
y=[1,3,5,2,6,8,9] ; 
bar(x,y)