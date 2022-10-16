R=randi(100);
disp('I have a number between 1 and 100');
count=1; 
while( count<=6 )
  n=input('Guess my number');
  if (n>R)
    disp('Too big');
  elseif(n<R)
    disp('Too small');
  else 
    disp('Correct');
    break;
  end
  count = count +1 ; 
end 
if (count == 7)
  disp('No correct guess in 6 attempts. No prize');
else 
  prize= (7-count) * 1000;
  disp( [ 'Correct guess on attempt # ' int2str(count)] ) ; 
  disp(['Your prize is ' int2str(prize) ' dollars.' ]) ;
end