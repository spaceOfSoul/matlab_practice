v=[1:1:10]
s=0;
p=0;
for i=1:length(v)
 if rem(v(i),2)==0
  p=p+1;
  w1(p)=v(i);
 elseif rem(v(i),2)==1
  s=s+1;
  w2(s)=v(i);
 end
end
w1
w2
sw1=sum(w1)
sw2=sum(w2)