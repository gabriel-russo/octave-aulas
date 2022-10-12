function [xi, i] = metodo_secante(f, x0, x1, tolerancia, N)
	
	i = 0;
	
	while (i <= N)
		
		xi = ((x0 * f(x1)) - (x1 * f(x0))) / (f(x1) - f(x0));
		
		if ( abs( (xi - x1/ xi) ) < tolerancia )
			
			printf("%d", xi)
			
			return;

		endif

		x0 = x1;
		x1 = xi;
		
		i = i + 1;

	endwhile

endfunction
