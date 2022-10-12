function [x, cont] = falsa_posicao (f, a, b, tol, Nmax)
	## Entrada: Intervalo inicial [a,b], precisão p e número máximo de iterações N max
	## Saída: Valor x da raiz calculada e quantidade de iterações realizadas cont
	
	cont = 0;
	err = 1;
	x = a;
	while (err > tol && cont <= Nmax )
		
		xa = x;
		
		x = a - ((f(x) * (b-a)) / (f(b) - f(a)));

		if (f(x) * f(a)) < 0
			
			b = x;
		
		else
			
			a = x;

		endif
		
		err = abs(x - xa) / abs(x);
		
		cont = cont + 1;

	endwhile

endfunction
