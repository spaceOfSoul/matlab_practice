function main
  fig = figure;
  set(fig,'WindowButtonDownFcn',@buttonDown);
  set(fig,'WindowButtonMotion',@motion);
  set(fig,'KeyPressFcn',@keyPress);
endfunction

function buttonDown(hfig, e)
  before = get(hfig,'position');
  height = before(4)-10;
  set(hfig,'position',[before(1) before(2) before(3) height])
endfunction

function motion(hfig,e)
  cursur_position = get(hfig,'CurrentPoint');
  pos = get(hfig,'position');#x,y,width,height
  x = cursur_position(1);y = cursur_position(2);
  set(hfig,'color',[0 x/pos(3) y/pos(4)]);
endfunction

function keyPress(hfig, e)
  set(hfig, 'color',[1 0 0]);
  pos = get(hfig,'position');
  pos = [0,0,pos(3),pos(4)]
  set(hfig,'position',pos);
  pause(3);
  close all;
endfunction
