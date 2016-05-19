function [T] = cheb(n)
%CHEB Give back matrix with the coëfficients of succesive Chebyshev
%polynomials, up to degree n.
%   The k-th row corresponds to the k-th polynomial T_k. The i-th column
%   corresponds to the i-th degree term of T_k.
T = zeros(n+1);
T(1,1) = 1;
T(2,2) = 1;
for k = 2:n
    T(k+1,2:k+1) = 2*T(k,1:k);
    T(k+1,1:k) = T(k+1,1:k) - T(k-1,1:k);
end
end

