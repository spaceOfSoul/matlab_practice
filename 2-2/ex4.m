hfig=figure; % Figure �� �� �� ����
Color_save=get( hfig , 'color' ); % Figure�� ó���� color �Ӽ��� ����
Pos_save=get( hfig, 'position'); % Figure�� ó���� position �Ӽ��� ����
pause(1); % 1 �ʰ� �޽�
for ii=1:3
  set( hfig, 'position',[Pos_save(1)-200,Pos_save(2)-200 ,Pos_save(3),Pos_save(4)]);
  set( hfig, 'color', [0 0 0]);
  pause(1) % 1�ʰ� �޽�
  set( hfig, 'position',[Pos_save(1),Pos_save(2) ,Pos_save(3),Pos_save(4)] );
  set( hfig, 'color',[0 1 0]);
  pause(1) % 1�ʰ� �޽�
  set( hfig, 'position',[Pos_save(1),Pos_save(2) ,Pos_save(3),Pos_save(4)]);
  set( hfig, 'color',[1 0 0] );
  pause(1) % 1�ʰ� �޽�
  set( hfig, 'position',[Pos_save(1),Pos_save(2) ,Pos_save(3),Pos_save(4)]);
  set( hfig, 'color',[0 0 1] );
  pause(1) % 1�ʰ� �޽�
end
set( hfig, 'position',Pos_save);
set(hfig,  'color', Color_save);
pause(1); % 1�ʰ� �޽�
close(hfig);
