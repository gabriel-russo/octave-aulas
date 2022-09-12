function [x] = converte2(n)
  x = [];
  i = 1;
  while (n != 0)
    d = fix(2*n);
    n = 2*n - d;
    x(i) = d;
    i++;
  endwhile
endfunction
