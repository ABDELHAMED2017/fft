function [a] = cheb_coeff(f_handle,n,N)
%CHEB_COEFF Returns the weights a_k to be used in the Chebyshev
%approximatinon of f_handle with degree n and points to be used N.

    x_n = zeros(1,N+1);
    for n = 0:N
        x_n(n+1) = f_handle(cos(pi*n/N));
    end
    
    x = [x_n fliplr(x_n(2:N))];
    f = real(fft(x,2*N));
    
    a = f(1:n+1)/N;
end
