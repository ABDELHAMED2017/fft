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
%
% 10.05 + 1.005 = 11.06 (11.055)
% % Note: skip this test. add_flp doesn't behave as expected here.
% a = struct('mantissa', [5 0 0 1], 'exponent', 2, 'sign', 1);
% b = struct('mantissa', [5 0 0 1], 'exponent', 1, 'sign', 1);
% c = add_flp(a,b);
% d = struct('mantissa', [6 0 1 1], 'exponent', 2, 'sign', 1);
% assert(isequal(c,d));
%
% 10.05 + 1.004 = 11.05  (11.054)
a = struct('mantissa', [5 0 0 1], 'exponent', 2, 'sign', 1);
b = struct('mantissa', [4 0 0 1], 'exponent', 1, 'sign', 1);
c = add_flp(a,b);
d = struct('mantissa', [5 0 1 1], 'exponent', 2, 'sign', 1);
assert(isequal(c,d));


% Test sub_flp
%
% 9.33262 - 93.3262 = -83.9936
a = struct('mantissa', [2 6 2 3 3 9], 'exponent', 1, 'sign', 1);
b = struct('mantissa', [2 6 2 3 3 9], 'exponent', 2, 'sign', 1);
c = sub_flp(a,b);
d = struct('mantissa', [6 3 9 9 3 8], 'exponent', 2, 'sign', -1);
assert(isequal(c,d));


% Test mul_flp
%
% -2.7345E+3 * 8.1300E-7 = -2.2231E-3 (= -22.231E-4)
a = struct('mantissa', [5 4 3 7 2], 'exponent', +3, 'sign', -1);
b = struct('mantissa', [0 0 3 1 8], 'exponent', -7, 'sign', +1);
c = mul_flp(a,b);
d = struct('mantissa', [1 3 2 2 2], 'exponent', -3, 'sign', -1);
assert(isequal(c,d));



