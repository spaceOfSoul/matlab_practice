function main
  fig = figure;

  button = uicontrol(fig,'style', 'pushbutton');
  set(button,'position',[30 30 100 100]);

  staticText = uicontrol(fig,'style','text', 'string', 'Good afternoon!',...
    'position', [230 0 300 60], 'ForegroundColor',[1 0 0]);
  set(button,'callback',{@buttonDown,staticText});
endfunction

function buttonDown(source,event,txt)
    initPos = get(txt,'position');
    initFontSize = get(txt,'fontSize');
    for i=1:7
      curPos = get(txt,'position');
      curFS = get(txt,'fontSize');
      
      curPos(2) = curPos(2)+30;
      curFS +=2;
      set(txt,'position',curPos);
      set(txt,'fontSize',curFS);
      pause(0.5)
    endfor
    set(txt,'position',initPos);
    set(txt,'fontSize',initFontSize);
endfunction
