% Simple case
% 655 - 301 = 354
a = [5 5 6];
b = [1 0 3];
[c,sign] = sub_int(a,b);
assert(isequal(c, [4 5 3]));
assert(isequal(sign, 1));

% Unequal length inputs
% 123 - 1 = 122
a = [3 2 1];
b = 1;
[c,sign] = sub_int(a,b);
assert(isequal(c, [2 2 1]));
assert(isequal(sign, 1));

% Negative result
% 301 - 655 = 
a = [1 0 3];
b = [5 5 6];
[c,sign] = sub_int(a,b);
assert(isequal(c, [4 5 3]));
assert(isequal(sign, -1));

% Remove digits.
% 1000 - 988 = 12
a = [0 0 0 1];
b = [8 8 9];
[c,sign] = sub_int(a,b);
assert(isequal(c, [2 1]));
assert(isequal(sign, 1));

% Carry
% 500 - 2 = 498
a = [0 0 5];
b = 2;
[c,sign] = sub_int(a,b);
assert(isequal(c, [8 9 4]));
assert(isequal(sign, 1));

% Multiple carries
% 500 - 22 = 478
a = [0 0 5];
b = [2 2];
[c,sign] = sub_int(a,b);
assert(isequal(c, [8 7 4]));
assert(isequal(sign, 1));

% Equal inputs for zero result
% 123 - 123 = 0
a = [3 2 1];
[c,sign] = sub_int(a,a);
assert(isequal(c, 0));
assert(isequal(sign, 0));

% Neutral element for addition/subtraction.
% 123 - 0 = 123
a = [3 2 1];
b = 0;
[c,sign] = sub_int(a,b);
assert(isequal(c, a));
assert(isequal(sign, 1));

% Large number test.
a    =                                 fliplr([9 8 9 8 4 5 6 1 6 8 4 1 6 2 1 2]);
b    = fliplr([1 2 1 6 5 8 9 8 4 8 9 4 1 6 5 1 8 9 7 6 5 3 7 6 1 2 9 7 5 9 1 7]);
diff = fliplr([1 2 1 6 5 8 9 8 4 8 9 4 1 6 5 0 9 0 7 8 0 8 1 4 4 4 5 5 9 7 0 5]);
[c,sign] = sub_int(a,b);
assert(isequal(c, diff));
assert(isequal(sign, -1));
