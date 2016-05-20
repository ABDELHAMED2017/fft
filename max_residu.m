function [diff] = max_residu(f_handle,n,N)
%CONVERGENCE_RATE Calculates the maximum difference between the calculated 
%Chebyshev polynomial and the original function (f_handle) for a given 
%degree (n) and a number of points to use in the numerical calculation of a_k (N). 

T = cheb(n);
a = cheb_coeff(f_handle,n,N);
c = poly(a,T,n);

x = -1:0.01:1;
diff = max(abs(f_handle(x)-polyval(fliplr(c),x)));
end

