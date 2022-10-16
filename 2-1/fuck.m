function y=fuck(x)
  for k=1:length(x)
    if(-1<x(k) && x(k)<=0)
      y(k)=x(k)+1;
    elseif(0<x(k) && x(k)<=1)
      y(k)=1;
    elseif(1<x(k) && x(k)<=2)
      y(k)=(x(k)-2)^2;
    else
      y(k)=0;
    end
  end
endfunction
