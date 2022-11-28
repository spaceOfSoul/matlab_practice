function exam
  #1
  fig = figure;
  button = uicontrol(fig,'style','pushbutton','position',[0 320 100 100],'string','OK');

  color = get(fig,'color');
  txt = uicontrol(fig,'style','text','position',[100 320 200 100],'string','20191057',...
  'BackgroundColor',color,'ForegroundColor',[0 0 1]);
  
#2
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

#3
x = [-2:0.1:2];
y = [-2:0.1:2];

[X Y] = meshgrid(x,y);
z = X+Y*j;

#plot
subplot(2,2,2);
f=exp(z)./(z.^2+1);
mesh(X,Y,abs(z));

#title
z = 1+2*j;
f=exp(z)./(z.^2+1);
title(num2str(f));

#4
handles.button = uicontrol(fig,'style','pushbutton','position',[0 320 100 100],'string','OK');

handles.txt = uicontrol(fig,'style','text','position',[0 0 200 50],'string','20191057');
set(handles.button, 'callback', {@btnFcn, handles});  
endfunction

function btnFcn(s,e,handles)
  pos = get(handles.txt,'position');
  pos = [(pos(1)+10)*(pos(1)+10<=360) pos(2) pos(3) pos(4)];
  set(handles.txt,'position',pos);
end

