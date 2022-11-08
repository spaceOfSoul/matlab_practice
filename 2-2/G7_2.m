function main
  fig = figure('position',[500 500 500 500]);
  axes1 = axes('position',[0.1 0.65 0.8 0.3]);
  axes2 = axes('position',[0.1 0.3 0.8 0.3]);
  check1 = uicontrol(fig,'style','checkbox',...
  'string','Enable Axes 1 Grid Line',...
  'position',[ 100 100 200 30]);
  check2 = uicontrol(fig,'style','checkbox',...
  'string','Enable Axes 2 Grid Line',...
  'position',[ 100 70 200 30]);
  
  set(check1,'callback',{@check_fcn,axes1});
  set(check2,'callback',{@check_fcn,axes2});
endfunction

function check_fcn(source,e,axes)
  val=get(source,'value');
  if(val == 1)
    set(axes,'XGrid','on');
    set(axes,'YGrid','on');
  else
    set(axes,'XGrid','off');
    set(axes,'YGrid','off');
  end
endfunction
