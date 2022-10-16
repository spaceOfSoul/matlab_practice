a = input('first number :')
b = input('last number :')
c=0;
w=0;
if (a>b)
  w=0
elseif (b == 1)
  w=0
else
  while a>b
    for (i=1:a)
      if (sum(a,i)==0)
        c=c+1;
      endif
    endfor
    if (c==2)
      disp(a)
      w=w+1;
    endif
    c=0;
  endwhile
endif