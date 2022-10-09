function [x, cont] = metodo_pontofixo (f, g, x0, tol, Nmax)
	
	i = 0;
	
	x = x0

	while (i <= Nmax)
		xi = g(x);

		if (abs(xi - x ) < tol || f(xi) == 0)
			printf("Valor de x = %.2f\n", xi);
			return;
		endif

		x = xi;

		i = i +1;
	endwhile
	error("O método falhou em %d iterações", Nmax);

endfunction
