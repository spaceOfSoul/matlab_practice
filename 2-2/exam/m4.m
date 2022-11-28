
function main
handles.fig = figure;
handles.button = uicontrol(handles.fig,'style','pushbutton','position',[0 320 100 100],'string','OK');

handles.txt = uicontrol(handles.fig,'style','text','position',[0 0 200 50],'string','20191057');
set(handles.button, 'callback', {@btnFcn, handles});  
end

function btnFcn(s,e,handles)
  pos = get(handles.txt,'position');
  pos = [(pos(1)+10)*(pos(1)+10<=360) pos(2) pos(3) pos(4)];
  set(handles.txt,'position',pos);
end
