p1 =[1 1]
p2 =[1 1]
while sum(p1)>0&sum(p2)>0
  %player1 turn
  if sum(p2)>0
  if p1(1)!=0 & p1(2)!=0%플레이어1의 손가락 두개 모두 0이 아닌 경우
    f1 = input('choose your finger, player1.')
    if f1>2|f1<1
    while f1>2|f1<1
    f1 = input('choose your finger between 1 and 2., player1.')
    endwhile
    endif
  else%플레이어1의 손가락 둘 중 하나가 0인 경우
    for a=1:2
      if p1(a)>0
        f1=p1(a);
      endif
    endfor
  endif
  if p2(1)!=0 & p2(2)!=0 %상대방 손가락 두개 모두 0이 아닌 경우
  o1 = input('choose your opponent finger.')
  if o1>2|o1<1
    while o1>2|o1<1
      o1 = input('choose your opponent finger between 1 and 2.')
    endwhile
  endif
  else%상대방 손가락의 둘 중 하나가 0인 경우
    for a=1:2
      if p2(a)>0
        o1=p2(a);
      endif
    endfor
  endif
%손가락 연산
  p1(f1)=p1(f1)+p2(o1);
  if p1(f1)>5
    p1(f1)=p1(f1)-5;
  elseif p1(f1)==5
    p1(f1)=0;
  endif
  p1
  p2
  endif

  %player2 turn
  if sum(p1)>0
  if p2(1)!=0 & p2(2)!=0%플레이어2의 손가락 두개 모두 0이 아닌경우
    f2 = input('choose your finger, player2.')
    if f2>2|f2<1
    while f2>2|f2<1
    f2 = input('choose your finger between 1 and 2.')
    endwhile
    endif
  else%플레이어2의 손가락 둘중 하나가 0인 경우
    for a=1:2
      if p2(a)>0
        f2=p2(a);
      endif
    endfor
  endif
  if p1(1)!=0 & p1(2)!=0 %상대방 손가락 두개 모두 0이 아닌 경우
  o2 = input('choose your opponent finger.')
  if o2>2|o2<1
    while o2>2|o2<1
      o2 = input('choose your opponent finger between 1 and 2.')
    endwhile
  endif
  else%상대방 손가락의 둘 중 하나가 0인 경우
    for a=1:2
      if p1(a)>0
        o2=p1(a);
      endif
    endfor
  endif
%손가락 연산
  p2(f2)=p2(f2)+p1(o2);
  if p2(f2)>5
    p2(f2)=p2(f2)-5;
  elseif p2(f2)==5
    p2(f2)=0;
  endif
  p1
  p2
  endif
endwhile
%승리판정
if sum(p1) == 0
  disp('player1 victory!')
else
  disp('player2 victory!')
endif
