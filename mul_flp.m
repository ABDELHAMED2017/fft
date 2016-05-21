function [c] = mul_flp(a,b)
%MUL_FLP Multiplies two floating point numbers.
%
%   a, b, and c are 'FLP' structs describing a high precision floating
%   point number.

    N = length(a.mantissa);

    c_sign = a.sign * b.sign;
    c_exp = a.exponent + b.exponent;
    prod = mul_int(a.mantissa, b.mantissa);
    if prod == 0
        c_sign = 1;
        c_exp = 0;
        c_mant = zeros(1,N);
    else
        if length(prod) < 2*N
            c_exp = c_exp - 1;
        end
        c_mant = prod(end-N+1:end);
    end
    c = struct('mantissa', c_mant, 'exponent', c_exp, 'sign', c_sign);

end

