a=[1:10]*2;
b=0;
for i=1:length(a)
b=b+mod(i,3)*a(i);
end
y=b
