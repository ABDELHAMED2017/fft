% Negate +1 > -1
a = struct('mantissa', [2 6 2 3 3 9], 'exponent', 158, 'sign', 1);
c = neg_flp(a);
assert(isequal(c.mantissa, a.mantissa));
assert(isequal(c.exponent, a.exponent));
assert(isequal(c.sign, -1));
%
% Negate -1 > +1
c = neg_flp(c);
assert(isequal(c.mantissa, a.mantissa));
assert(isequal(c.exponent, a.exponent));
assert(isequal(c.sign, +1));

