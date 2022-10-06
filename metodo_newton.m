function [x, i] = metodo_newton(f, fderivada, x0, tolerancia, N)
	i = 0;
	while (i <= N)
		x = x0 - f(x0)/fderivada(x0);
		
		if (abs((x - x0/x)) < tolerancia)
			
			display(x)
			
			return;

		endif

		x0 = x;

		i = i + 1;

	endwhile

endfunction
