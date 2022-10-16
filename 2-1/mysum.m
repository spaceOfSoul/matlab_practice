function s = mysum(n)
s=0;
for i=1:n
if rem(i,2)==1
s=s+i;
end
end
end