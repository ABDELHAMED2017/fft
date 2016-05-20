function [c] = sub_flp(a,b)
%SUB_FLP Subtract two floating point numbers.
%
%   a, b, and c are 'FLP' structs describing a high precision floating
%   point number.

    % a - b  =  a + (-b)
    c = add_flp(a,neg_flp(b));

end
