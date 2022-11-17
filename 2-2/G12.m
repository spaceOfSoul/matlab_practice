function main
  handles.fig = figure('units','pixels','position',[300 300 500 500]);
  handles.viewMenu = uimenu('label','View');
  handles.rotateMenu = uimenu('label','Rotate');
  set(handles.fig,'menubar','none');
  
  handles.view1 = uimenu('parent',handles.viewMenu,'label','Mesh','checked','on');
  handles.view2 = uimenu('parent',handles.viewMenu,'label','Suface','checked','off');
  handles.view3 = uimenu('parent',handles.viewMenu,'label','Suface+Contour','checked','off');
  
  handles.rotX = uimenu('parent',handles.rotateMenu,'label','x rotation','Accelerator','x');
  handles.rotY = uimenu('parent',handles.rotateMenu,'label','y rotation',...
    'Accelerator','y','separator','on');
  handles.rotZ = uimenu('parent',handles.rotateMenu,'label','z rotation',...
    'Accelerator','z','separator','on');
  
  handles.axes = axes('units','pixels','box','on','cameraposition',[1 1 1],...
    'camerapositionmode','manual','cameraupvector',[0 0 1],'cameraupvectormode','manual',...
    'nextplot','replacechildren');
    
  x=[-10:0.5:10];y=[-10:0.5:10];
  [X Y]=meshgrid(x,y);
  [m n]=size(X);
  for i=1:m
    for j=1:n
      if(X(i,j)==0 || Y(i,j)==0)
        Z(i,j)=0;
      else
        Z(i,j)=X(i,j)*Y(i,j)*(X(i,j)^2-Y(i,j)^2)/(X(i,j)^2+Y(i,j)^2);
      end
    end
  end
  mesh(X,Y,Z);
  
  handles.x = X;
  handles.y = Y;
  handles.z = Z;
  
  set(handles.view1,'callback',{@view1,handles});
  set(handles.view2,'callback',{@view2,handles});
  set(handles.view3,'callback',{@view3,handles});
  set(handles.rotX,'callback',{@rotx,handles});
  set(handles.rotY,'callback',{@roty,handles});
  set(handles.rotZ,'callback',{@rotz,handles});
endfunction

function view1(s,data,handles)
  set(handles.view1,'checked','on');
  set(handles.view2,'checked','off');
  set(handles.view3,'checked','off');
  mesh(handles.axes,handles.x,handles.y,handles.z);
endfunction

function view2(s,data,handles)
  set(handles.view1,'checked','off');
  set(handles.view2,'checked','on');
  set(handles.view3,'checked','off');
  surf(handles.axes,handles.x,handles.y,handles.z);
endfunction

function view3(s,data,handles)
  set(handles.view1,'checked','off');
  set(handles.view2,'checked','off');
  set(handles.view3,'checked','on');
  surfc(handles.axes,handles.x,handles.y,handles.z);
endfunction

function rotx(s,data,handles)
  set(handles.axes,'cameraupvector',[1 0 0]);
  for i=0:100
    set(handles.axes,'cameraposition',...
      [20 20*sin(4/3*pi*i/100) 20*cos(4/3*pi*i/100)]);
      plot_again(handles);
      drawnow;
  endfor
endfunction

function roty(s,data,handles)
  set(handles.axes,'cameraupvector',[1 0 0]);
  for i=0:100
    set(handles.axes,'cameraposition',...
      [20*sin(4/3*pi*i/100) 20 20*cos(4/3*pi*i/100)]);
      plot_again(handles);
      drawnow;
  endfor
endfunction

function rotz(s,data,handles)
  set(handles.axes,'cameraupvector',[1 0 0]);
  for i=0:100
    set(handles.axes,'cameraposition',...
      [20*sin(4/3*pi*i/100) 20*cos(4/3*pi*i/100) 20]);
      plot_again(handles);
      drawnow;
  endfor
endfunction

function plot_again(handles)
  if(strcmp(get(handles.view1,'checked'),'on'))
    mesh(handles.axes,handles.x,handles.y,handles.z);
  elseif(strcmp(get(handles.view2,'checked'),'on'))
    surf(handles.axes,handles.x,handles.y,handles.z);
  else
    surfc(handles.axes,handles.x,handles.y,handles.z);
  endif
endfunction
