function [c] = poly(a,T,n)
%POLY Gives the coëfficients of the polynomial y(n).
c = zeros(n+1,1);
for graad = 1:n
    c = c + a .* T(:,graad);
end
c(1) = c(1)/2;
end

