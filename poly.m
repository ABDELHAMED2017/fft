function [c] = poly(a,T,n)
%POLY Returns the co�fficients of the polynomial y_n.
    a(1) = a(1)/2;
    c = a * T;
end
