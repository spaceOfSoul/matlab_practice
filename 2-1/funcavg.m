function favg=funcavg(f, a, b, n)
  x = linspace(a,b,n); 
  y = f(x);
  favg = mean(y); 
endfunction