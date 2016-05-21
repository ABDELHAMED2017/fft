function [c,err] = div_flp(a,b)
%DIV_FLP Divides two floating point numbers.
%
%   a, b, and c are 'FLP' structs describing a 
%   high precision floating point number.

    [b_inv,err] = inv_flp(b);
    if err == 1
        c = NaN;
    else
        c = mul_flp(a,b_inv);
    end
    
end
