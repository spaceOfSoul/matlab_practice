while(1)
  N=input("Enter an integer");
  if(0<N && N <= 10)
    t=[0:0.01:1];
    y=exp(-N*t);
    z=sin(pi*N*t);
    a=[t;y;z];
    filename = strcat('mydata', int2str(N));
    fid=fopen(filename, 'w');
    fprintf(fid, '%f %f %f\n', a);
    fclose(fid);
  elseif(-10<=N && N<0)
    filename = strcat('mydata', int2str(-N));
    fid=fopen(filename,'r');
    b=fscanf(fid, '%g %g %g', [3 inf]);
    fclose(fid);
    t=b(1,:);y=b(2,:);z=b(3,:);
    figure;
    subplot(1,2,1);plot(t,y);title(['data in file ' filename]);
    subplot(1,2,2);plot(t,z);title(['data in file ' filename]);
  else
    break;
  end
end