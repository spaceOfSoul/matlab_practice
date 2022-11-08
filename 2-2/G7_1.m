function main
   fig = figure('position',[500 300 500 300])
   axes = axes('units','pixels');
   checkbox = uicontrol(fig,'style','checkbox','position',...
    [300 0 200 30], 'string', 'Enable Axes Grid Line');
   set(checkbox,'callback',{@checkboxFcn, axes})
endfunction

function checkboxFcn(source,e,axes)
  val=get(source,'value');
  if(val == 1)
    set(axes,'XGrid','on');
    set(axes,'YGrid','on');
  else
    set(axes,'XGrid','off');
    set(axes,'YGrid','off');
  end
endfunction
