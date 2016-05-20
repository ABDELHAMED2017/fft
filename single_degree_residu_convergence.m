f_handle = @(x) (x-1)./(1+6*(x.^2));


n1 = 7;
n = 7;
residus3 = zeros(2*n1+1,1);

for N = n:3*n1
    residus3(N-n+1) = max_residu(f_handle,n,N);
end

n = 5;
residus2 = zeros(2*n1+1,1);

for N = n:3*n1-(n1-n)
    residus2(N-n+1) = max_residu(f_handle,n,N);
end

n = 9;
residus4 = zeros(2*n1+1,1);

for N = n:3*n1-(n1-n)
    residus4(N-n+1) = max_residu(f_handle,n,N);
end

n = 3;
residus1 = zeros(2*n1+1,1);

for N = n:3*n1-(n1-n)
    residus1(N-n+1) = max_residu(f_handle,n,N);
end

semilogy(1:2*n1+1,residus1, 1:2*n1+1, residus2, 1:2*n1+1, residus3);
