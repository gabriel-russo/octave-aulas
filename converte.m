function [x] = converte(n)
  x = [];
  i = 1;
  while (n != 0)
    d = mod(n, 2);
    n = fix(n/2);
    x(i) = d;
    i++;
  endwhile
  x = x(end:-1:1);
 endfunction

