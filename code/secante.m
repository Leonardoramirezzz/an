function raiz=secante(g,x0,tol)
  k=0;
  h=0.000000001;
  x1=g(x0,h);
  fprintf('|   k    |     m      |\n');
  fprintf('|   %4.0f    |     %4.6f      |\n',k,x0);
  while abs(x1-x0)>=tol
    k=k+1;
    x0=x1;
    fprintf('|   %4.0f    |     %4.6f      |\n',k,x0);
    x1=g(x0,h);
  endwhile
  raiz=x1;
endfunction
