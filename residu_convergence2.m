f_handle = @(x) (x-1)./(1+6*(x.^2));

max_degree = 10;

residus = zeros(max_degree,1);
for n = 1:max_degree
    residus(n) = max_residu(f_handle,n,n);
end

residus21 = zeros(max_degree,1);
for n = 1:max_degree
    residus21(n) = max_residu(f_handle,n,ceil(1.2*n));
end

residus22 = zeros(max_degree,1);
for n = 1:max_degree
    residus22(n) = max_residu(f_handle,n,ceil(1.5*n));
end

residus3 = zeros(max_degree,1);
for n = 1:max_degree
    residus3(n) = max_residu(f_handle,n,2*n);
end

semilogy(1:max_degree, residus, 'bo-', 1:max_degree, residus21, 'ro-', 1:max_degree, residus22, 'ro-', 1:max_degree, residus3, 'yo-');

