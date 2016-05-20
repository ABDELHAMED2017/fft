n = 10;
T = cheb(n);
f_handle = @(x) (x-1)./(1+6*(x.^2));
a = cheb_coeff(f_handle,n);
a0 = 1/3*( f_handle(1) + 2*( f_handle(cos(pi/3)) + f_handle(cos(2*pi/3)) ) + f_handle(cos(3*pi/3) ) );
c = poly(a,T,n);

x = -1:0.01:1;
plot(x,f_handle(x), x,polyval(fliplr(c),x))
