function [x] = substituicao_reversa(A, b)
	
	[m, n] = size(A);
	
	x = zeros(1, n);

	for k = 1:n
		i = n - k +1;
		
		for j=i+1:n # Somátorio
			x(i) = x(i) + A(i, j) * x(j);
		endfor

		x(i) = (b(i) - x(i)) / A(i, i);

	endfor

endfunction
