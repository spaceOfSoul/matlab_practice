function y=myf(x,m,sigma)
  y=(1/sqrt(2*pi*sigma))*e.^-((x-m).^2/(2*sigma^2));
 