%test cheb.m
correct = [1     0     0     0     0     0     0;
     0     1     0     0     0     0     0;
    -1     0     2     0     0     0     0;
     0    -3     0     4     0     0     0;
     1     0    -8     0     8     0     0;
     0     5     0   -20     0    16     0;
    -1     0    18     0   -48     0    32];

T = cheb(6);
assert(isequal(correct,T));

%test poly.m
a = [6,5,4,3,2,3,4];
correct = [-3, 11 , 64, -48, -176, 48, 128];
assert(isequal(poly(a,T,6),correct));