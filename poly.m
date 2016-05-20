function [c] = poly(a,T,n)
%POLY Gives the coëfficients of the polynomial y_n.
a(1) = a(1)/2;
c = a * T;
end
