fig = figure;
button = uicontrol(fig,'style','pushbutton','position',[0 320 100 100],'string','OK');

color = get(fig,'color');
txt = uicontrol(fig,'style','text','position',[100 320 200 100],'string','20191057',...
  'BackgroundColor',color,'ForegroundColor',[0 0 1]);
  