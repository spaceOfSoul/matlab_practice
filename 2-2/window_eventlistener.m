function mymain
  hfig=figure;
  p=get(hfig,'position');
  plot(0,0); 
  hold on; 
  grid on;
  axis([0 p(3) 0 p(4)])
  set(hfig, 'WindowButtonDownFcn',@wbd_callback);
end

function wbd_callback(hfig, eventdata)
  set(hfig,'WindowButtonMotion',@wbm_callback);
end

function wbm_callback(hfig, eventdata)
  cp = get(hfig,'CurrentPoint');
  #cp = round(cp);
  x = cp(1);
  y = cp(2);
  set(hfig,'WindowButtonUpFcn',@wbu_callback);
  plot(x,y);
  drawnow
endfunction

function wbu_callback(hfig, eventdata)
  set(hfig,'WindowButtonDownFcn','');
  close all;
end
