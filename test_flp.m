% Test neg_flp
%
% Negate +1 > -1
a = struct('mantissa', [2 6 2 3 3 9], 'exponent', 158, 'sign', 1);
c = neg_flp(a);
d = struct('mantissa', [2 6 2 3 3 9], 'exponent', 158, 'sign', -1);
assert(isequal(c, d));
%
% Negate -1 > +1
e = neg_flp(d);
assert(isequal(e, a));


% Test add_flp
%
% 9.33262 + 93.3262 = 102.658
a = struct('mantissa', [2 6 2 3 3 9], 'exponent', 1, 'sign', 1);
b = struct('mantissa', [2 6 2 3 3 9], 'exponent', 2, 'sign', 1);
c = add_flp(a,b);
d = struct('mantissa', [8 5 6 2 0 1], 'exponent', 3, 'sign', 1);
assert(isequal(c,d));
%
% 9.33262 + (-93.3262) = -83.9936
a = struct('mantissa', [2 6 2 3 3 9], 'exponent', 1, 'sign', 1);
b = struct('mantissa', [2 6 2 3 3 9], 'exponent', 2, 'sign', -1);
c = add_flp(a,b);
d = struct('mantissa', [6 3 9 9 3 8], 'exponent', 2, 'sign', -1);
assert(isequal(c,d));

% Test sub_flp
%
% 9.33262 - 93.3262 = -83.9936
a = struct('mantissa', [2 6 2 3 3 9], 'exponent', 1, 'sign', 1);
b = struct('mantissa', [2 6 2 3 3 9], 'exponent', 2, 'sign', 1);
c = sub_flp(a,b);
d = struct('mantissa', [6 3 9 9 3 8], 'exponent', 2, 'sign', -1);
assert(isequal(c,d));


