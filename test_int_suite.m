clear; clc;

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

% Simple carry
% 108 + 108 = 216
a = [8 0 1];
c = add_int(a,a);
assert(isequal(c, [6 1 2]));

% % Multiple carries
% 188 + 188 = 376
a = [8 8 1];
c = add_int(a,a);
assert(isequal(c, [6 7 3]));

% Carry -> extend
% 88 + 88 = 176
a = [8 8];
c = add_int(a,a);
assert(isequal(c, [6 7 1]));


disp('All tests ran succesfully.');
