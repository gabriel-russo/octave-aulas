function [i, x] = metodo_bissecao(f, a, b, N, tol)
	i = 0;
	
	while(i < N)

		x = (a+b)/2;
		fx = f(x);
		fa = f(a);
		
		if( fx == 0 || ((b-a)/2) < tol)
			
			printf("Número de iterações = %d, com x = %d\n",i, x);
			return;

			else if (fa * fx < 0)
				b = x;
			else
				a = x;
		endif
	endif
	i = i + 1;
endwhile
		error("Método falhou em %d iterações", i)
endfunction
