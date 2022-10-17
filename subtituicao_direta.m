function [x] = substituicao_reversa(A, b)
	
	[m, n] = size(A);
	
	x = zeros(1, n);
	
	k = 1;

	for k = k:n
		for j=1:k-1 # Somátorio
			x(k) = x(k) + (A(k, j) * x(j));
		endfor
		x(k) = (b(k) - x(k)) / A(k, k);

	endfor

endfunction
