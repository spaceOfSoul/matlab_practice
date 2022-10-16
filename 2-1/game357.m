stick = [3 5 7]
p1c=0;
p1e=0;
p2c=0;
p2e=0;
victory=0;
while sum(stick)>0
  if sum(stick)!=0
    p1c = input('Player1. Chose element in 1~3.')
      while p1c>3|p1c<1
        p1c = input('Player1. Chose element in 1~3.')
      endwhile
    while stick(p1c) == 0
      p1c = input('This element is empty... choose other element.')
      while p1c>3|p1c<1
        p1c = input('Player1. Chose element in 1~3.')
      endwhile
    endwhile
    p1e = input('Player1. How much erase number?.')
    while p1e<1
      p1e = input('Write in positive number.')
    endwhile
    stick(p1c) = stick(p1c)-p1e;
    if stick(p1c)<0
      stick(p1c)=0;
    endif
    victory=victory+1;
  endif
  stick
  if sum(stick)!=0
    p2c = input('Player2. Chose element in 1~3.')
      while p2c>3|p2c<1
        p2c = input('Player2. Chose element in 1~3.')
      endwhile
    while stick(p2c) == 0
      p2c = input('This element is empty... choose other element.')
      while p2c>3|p2c<1
        p2c = input('Player2. Chose element in 1~3.')
      endwhile
    endwhile
    p2e = input('Player2. How much erase number?.')
    while p2e<1
      p2e = input('Write in positive number.')
    endwhile
    stick(p2c) = stick(p2c)-p2e;
    if stick(p2c)<0
      stick(p2c)=0;
    endif
    victory=victory+1;
  endif
  stick
endwhile
if rem(victory,2)==0
  disp('Player1, Win!')
else
  disp('Player2, Win!')
endif
