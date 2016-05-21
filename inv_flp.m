function [c,err] = inv_flp(a)
% INV_FLP Calculates 1/a.
%
%   a and c are 'FLP' structs describing a 
%   high precision floating point number.

    if all(a.mantissa == 0)
        c = NaN;
        err = 1;
        return;
    end

    N = length(a.mantissa);
    
    % Everything's fine.
    err = 0;
    
    c = to_flp(1E-10,N);
    prev_c = to_flp(0,N);
    while from_flp(sub_flp(c, prev_c)) ~= 0
        prev_c = c;
        %c = c+(1-a*c)*c;
        t = mul_flp(a,c);
        t = sub_flp(to_flp(1,N),t);
        t = mul_flp(t,c);
        c = add_flp(c,t);
    end
    
end