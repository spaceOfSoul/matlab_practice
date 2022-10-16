lims=[0.01 0.2];
fplot(@myf2, lims); 
xlabel('t'); 
ylabel('y')
title('ex17c. 20001234 Hong Gildong')
[xval, fval]=fminbnd(@myf2, lims(1), lims(2));
text(xval, fval, ['min = ' num2str(fval) ' at t = ' num2str(xval)])