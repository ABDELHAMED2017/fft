n = 7;
N = 7;
T = cheb(n);
f_handle = @(x) (x-1)./(1+6*(x.^2));
a = cheb_coeff(f_handle,n,N);
c1 = poly(a,T,n);

N = 8;
a = cheb_coeff(f_handle,n,N);
c2 = poly(a,T,n);

x = -1:0.01:1;
%plot(x,f_handle(x), x,polyval(fliplr(c1),x), x,polyval(fliplr(c2),x));
plot(x,f_handle(x)-polyval(fliplr(c1),x), x,f_handle(x)-polyval(fliplr(c2),x));