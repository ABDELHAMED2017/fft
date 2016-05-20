f_handle = @(x) (x-1)./(1+6*(x.^2));

max_degree = 20;

residus = zeros(max_degree,1);
for n = 1:max_degree
    residus(n) = max_residu(f_handle,n,n);
end

residus2 = zeros(max_degree,1);
for n = 1:max_degree
    residus2(n) = max_residu(f_handle,n,n+10);
end

residus3 = zeros(max_degree,1);
for n = 1:max_degree
    residus3(n) = max_residu(f_handle,n,n*2);
end

semilogy(1:max_degree, residus, 'bo-', 1:max_degree, residus2, 'ro-', 1:max_degree, residus3, 'yo-');


