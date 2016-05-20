% Simple case
% 123 + 456 = 579
a = [3 2 1];
b = [6 5 4];
c = add_int(a,b);
assert(isequal(c, [9 7 5]));

% Unequal length inputs
% 123 + 1 = 124
a = [3 2 1];
b = 1;
c = add_int(a,b);
assert(isequal(c, [4 2 1]));

% Neutral element for addition
% 123 + 0 = 123
a = [3 2 1];
b = 0;
c = add_int(a,b);
assert(isequal(c, a));

% Carry
% 108 + 108 = 216
a = [8 0 1];
c = add_int(a,a);
assert(isequal(c, [6 1 2]));

% Multiple carries
% 188 + 188 = 376
a = [8 8 1];
c = add_int(a,a);
assert(isequal(c, [6 7 3]));

% Carry -> extend
% 88 + 88 = 176
a = [8 8];
c = add_int(a,a);
assert(isequal(c, [6 7 1]));

% Large number test.
a = fliplr([9 8 9 8 4 5 6 1 6 8 4 1 6 2 1 2]);
b = fliplr([1 2 1 6 5 8 9 8 4 8 9 4 1 6 5 1 8 9 7 6 5 3 7 6 1 2 9 7 5 9 1 7]);
sum = fliplr([1 2 1 6 5 8 9 8 4 8 9 4 1 6 5 2 8 8 7 4 9 9 3 7 8 1 3 9 2 1 2 9]);
c = add_int(a,b);
assert(isequal(c, sum));
