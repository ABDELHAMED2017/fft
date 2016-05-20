% Basic test
% 123 * 456 = 56088
a = [3 2 1];
b = [6 5 4];
c = mul_int(a,b);
assert(isequal(c, [8 8 0 6 5]));

% Unequal length inputs
% 123 * 2 = 246
a = [3 2 1];
b = 2;
c = mul_int(a,b);
assert(isequal(c, [6 4 2]));

% Neutral element for multiplication
% 123 * 1 = 123
a = [3 2 1];
b = 1;
c = mul_int(a,b);
assert(isequal(c, a));

% Absorbing element for multiplication
% 123 * 0 = 0
a = [3 2 1];
b = 0;
c = mul_int(a,b);
assert(isequal(c, b));

% Absorbing element > No unnecesary zeros.
% 123 * 0 = 0
a = [3 2 1];
b = [0 0];
c = mul_int(a,b);
assert(isequal(c, 0));

% Large number test.
a = fliplr([9 8 9 8 4 5 6 1 6 8 4 1 6 2 1 2]);
b = fliplr([1 2 1 6 5 8 9 8 4 8 9 4 1 6 5 1 8 9 7 6 5 3 7 6 1 2 9 7 5 9 1 7]);
product = fliplr([1 2 0 4 2 3 6 1 2 9 4 6 8 9 0 4 1 7 9 2 6 4 7 4 8 1 0 6 4 1 7 2 5 1 3 7 0 7 7 9 8 8 3 6 6 4 0 4]);
c = mul_int(a,b);
assert(isequal(c, product));
