f = 10e3; # frequency : 10k Hz
R = 10e3; #  resistance : 10k ohm
L = 100e-3; # inductance : 100mH

w = 2*pi*f; # omega

Z = R+j*w*L; # Impedence
Vs = 23.6*exp(j*0); # Source Voltage
I = Vs/Z; # current in fircuit

VR = R*I; # Resistor voltage
VL = j*w*L*I; # Inductor voltage

t = [0:1/(100*f) : 1/f]; # time

it = abs(I)*cos(w*t + angle(I)); # i(t)
Vst = abs(Vs) * cos(w*t + angle(Vs)); # Vs(t)
VRt = abs(VR) * cos(w*t + angle(Vs)); # Vr(t)
VLt = abs(VL) * cos(w*t + angle(VL)); # VL(t)

subplot(2,2,1);
plot(t, Vst);
title('Vs(t)');

subplot(2,2,2);
plot(t,it);
title('i(t)');

subplot(2,2,3);
plot(t, VRt);
title('Vr(t)');

subplot(2,2,4);
plot(t, VLt);
title('VL(t)');

