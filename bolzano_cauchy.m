function qtd = bolzano_cauchy(f, a, b, passo)

	qtd = 0;
	while (a <= b)
		
		if ((f(a) * f(a+passo)) < 0 )	
			qtd = qtd + 1;
		endif	

		a = a + passo;
	endwhile

endfunction
