function [c] = neg_flp(a)
%NEG_FLP Negates the given number.
%
%   a and c are 'FLP' structs describing a high precision floating
%   point number.

    c = a;
    c.sign = -a.sign;

end
