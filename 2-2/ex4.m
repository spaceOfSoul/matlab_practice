hfig=figure; % Figure 를 한 개 생성
Color_save=get( hfig , 'color' ); % Figure의 처음의 color 속성을 저장
Pos_save=get( hfig, 'position'); % Figure의 처음의 position 속성을 저장
pause(1); % 1 초간 휴식
for ii=1:3
  set( hfig, 'position',[Pos_save(1)-200,Pos_save(2)-200 ,Pos_save(3),Pos_save(4)]);
  set( hfig, 'color', [0 0 0]);
  pause(1) % 1초간 휴식
  set( hfig, 'position',[Pos_save(1),Pos_save(2) ,Pos_save(3),Pos_save(4)] );
  set( hfig, 'color',[0 1 0]);
  pause(1) % 1초간 휴식
  set( hfig, 'position',[Pos_save(1),Pos_save(2) ,Pos_save(3),Pos_save(4)]);
  set( hfig, 'color',[1 0 0] );
  pause(1) % 1초간 휴식
  set( hfig, 'position',[Pos_save(1),Pos_save(2) ,Pos_save(3),Pos_save(4)]);
  set( hfig, 'color',[0 0 1] );
  pause(1) % 1초간 휴식
end
set( hfig, 'position',Pos_save);
set(hfig,  'color', Color_save);
pause(1); % 1초간 휴식
close(hfig);
