# p : phasor
# w : omega
# t : time range
phasor2tf = @(p,w, t) abs(p)*cos(w*t + angle(p));

f = 1e3;
A = 3.76;
w = 2*pi*f;

R = 10e3;
C = .01e-6;

Vs = A*exp(j*0);
Z = R+1/(j*w*C);

I = Vs/Z;
Vr = R*I;
Vc = I / (j*w*C);

t = [0:1/(100*f): 1/f];

Vst = phasor2tf(Vs,w,t);
it = phasor2tf(I,w,t);
Vrt = phasor2tf(Vr,w,t);
Vct = phasor2tf(Vc,w,t);

subplot(2,2,1);
plot(t, Vst);
title('Vs(t)');

subplot(2,2,2);
plot(t, it);
title('i(t)');

subplot(2,2,3);
plot(t, Vrt);
title('Vr(t)');

subplot(2,2,4);
plot(t, Vct);
title('Vc(t)');