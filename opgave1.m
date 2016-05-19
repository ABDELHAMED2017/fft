n = 4;
T = cheb(n);
f_handle = @(x) (x-1)./(1+6*x.^2);
a = cheb_coeff(f_handle,n);
c = poly(a,T,n);

x = -1:0.01:1;
plot(x,f_handle(x), x,polyval(c,x))