fid = fopen('myfile1.txt', 'r');
A = fscanf(fid, '%g %c %g', [3 inf]);
fclose(fid);

A=A';
t = A(:,1);
y = A(:,3);
plot(t,y);