function [c] = poly(a,T,n)
%POLY Gives the co�fficients of the polynomial y_n.
c = a * T;
c(1) = c(1)/2;
end
