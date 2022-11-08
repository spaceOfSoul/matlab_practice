function main
  handles.fig = figure('position',[500 300 500 400]);
  
  handles.axes = axes(handles.fig,'units','pixels');
  set(handles.axes,'position',[66 180 387 200]);
  
  handles.list = uicontrol('style','listbox','position',[260 50 200 100],...
  'string','y=sin(2x)|y=e^(-x)|y=x^2');
  
  handles.x = [0:0.01:4*pi];
  handles.func(1,:) = sin(2*handles.x);
  handles.func(2,:) = exp(-handles.x);
  handles.func(3,:) = handles.x.^2;
  set(handles.list,'value',1);
  plot(handles.axes,handles.x,handles.func(1,:));
  set(handles.list,'callback',{@list_fcn,handles});
endfunction

function list_fcn(source,data,handles)
  num = get(source,'value');
  plot(handles.axes,handles.x,handles.func(num,:));
endfunction
