function main
  handles.fig = figure('position', [500 400 500 500]);
  handles.axes = axes(handles.fig,'units','pixels');
  set(handles.axes,'position',[66 180 387 300]);
  handles.popup = uicontrol('style','popupmenu','position',[260 50 200 30],...
  'string','mesh|surface|surface without line| surface with lighting');
  
  x = [-3*pi:0.1:3*pi];
  y = [-3*pi:0.1:3*pi];
  [handles.x handles.y] = meshgrid(x,y);
  
  handles.func = ( sinc(handles.x/pi).^2 + sinc((handles.x+pi)/pi).^2 )...
  .*(sinc(handles.y/pi).^2);
  mesh(handles.axes,handles.x,handles.y,handles.func);
  set(handles.popup,'callback',{@select_fcn,handles})
endfunction

function select_fcn(source,data,handles)
  num = get(source,'value');
  switch num
   case 1
     mesh(handles.axes,handles.x,handles.y,handles.func);
   case 2
     surf(handles.axes,handles.x,handles.y,handles.func);
   case 3
     surf(handles.axes,handles.x,handles.y,handles.func,'linestyle','none');
   case 4
     surf(handles.axes,handles.x,handles.y,handles.func,'linestyle','none');
     light('position',[0 -1 0],'style', 'infinite');
  endswitch
endfunction
