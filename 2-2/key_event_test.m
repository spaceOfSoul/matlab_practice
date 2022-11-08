function main
  player.fig = figure;
  xlim([-50 50]);
  ylim([-50 50]);
  player.x = 0;
  player.y = 0;
  circle(player.x, player.y,5);
  set(player.fig,'KeyPressFcn',{@keyPress,player.x,player.y});
endfunction

function keyPress(hfig, e,x,y)
  x
  y
  if e.Key == 'w'
    y = y+5;
  elseif e.Key == 'a'
    x = x-5;
  elseif e.Key == 's'
    y = y-5;
  elseif e.Key == 'd'
    x = x+5;
  endif
  circle(x,y,5);
endfunction

function h = circle(x,y,r)
  hold on
  th = 0:pi/50:2*pi;
  xunit = r * cos(th) + x;
  yunit = r * sin(th) + y;
  h = plot(xunit, yunit);
  hold off
end