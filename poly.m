function [c] = poly(a,T,n)
%POLY Returns the coëfficients of the polynomial y_n.
    a(1) = a(1)/2;
    c = a(1:n+1) * T(1:n+1,1:n+1);
end
