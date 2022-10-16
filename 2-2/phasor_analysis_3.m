# p : phasor
# w : omega
# t : time range
phasor2tf = @(p,w, t) abs(p)*cos(w*t + angle(p));

f = 20e3;
w = 2*pi*f;

R = 100;
L = 1e-3;
C = .02e-6;

ZL = j*w*L;
ZC = 1/(j*w*C);

ZT = 1/(1/ZL+1/ZC); # LC임피던스
Z = R+ZT; # 회로 임피던스

Vs = exp(j*0);
I = Vs/Z;
V2 = Vs * (ZT/Z);

IL = V2/ZL;
IC = V2/ZC;

t = [0:1/(100*f):1/f];

Vst = phasor2tf(Vs,w,t);
V2t = phasor2tf(V2,w,t);
ILt = phasor2tf(IL,w,t);
ICt = phasor2tf(IC, w, t)

subplot(2,2,1);
plot(t,Vst);
title('Vs(t)');


subplot(2,2,2);
plot(t,V2t);
title('V2(t)');

subplot(2,2,3);
plot(t,ILt);
title('IL(t)');

subplot(2,2,4);
plot(t,ICt);
title('IC(t)');