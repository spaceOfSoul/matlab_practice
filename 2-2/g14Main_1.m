function g14Main_1
  hfig = figure;
  set(hfig, 'WindowButtonDownFcn', @ifunc)
endfunction

function ifunc(hfig, e)
  tmp = get(hfig, 'color');
  set(hfig,'color', [0.5 0.5 0.5]);
  pause(3);
  set(hfig,'color',tmp);
endfunction
