function c=a_sum(A)
  [n,m]=size(A)
  for i=1:n
  s(i)=sum(A(i,:));
end
c=sum(s)/n;
end
