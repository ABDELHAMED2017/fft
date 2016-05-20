T = cheb(5);

x = -1:0.01:1;
plot(x,polyval(fliplr(T(1,:)),x), x,polyval(fliplr(T(2,:)),x), x,polyval(fliplr(T(3,:)),x), x,polyval(fliplr(T(4,:)),x), x,polyval(fliplr(T(5,:)),x), x,polyval(fliplr(T(6,:)),x))
%Nu worden de veeltermen met graad 1, 3, 5 en 7 getekend.