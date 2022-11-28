# p : phasor
# w : omega
# t : time range
phasor2tf = @(p,w, t) abs(p)*cos(w*t + angle(p));

R1 = 500;
L = 10e-3;
R2 = 1000;
C = 0.1e-6;

f = 2000;
amp = 2;
w = 2*pi*f;

ZL = j*w*L;
ZC = 1/(j*w*C);

Z = R1+ZL + ((R2+C)/(R2*C));

et_f = amp*exp(j*0);

vt_f = et_f * (((R2+C)/(R2*C))/Z);

t = [0:0.00001:(1/f)*2];#time range
vt = phasor2tf(vt_f,w,t); # v(t);

subplot(2,2,3);
plot(t,vt);
str = sprintf("amplitude=%f , phase=%f",abs(vt_f),rad2deg(angle(vt_f)));
title(str);