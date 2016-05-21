function [c,err] = sqrt_flp(a)
% SQRT_FLP Calculates the square root of a.
%
%   a and c are 'FLP' structs describing a 
%   high precision floating point number.

    N = length(a.mantissa);

    % Everything's fine.
    err = 0;
    
    % First calculate 1/sqrt(a).
	x = to_flp(1E-10,N);
    prev_x = to_flp(0,N);
    while from_flp(sub_flp(x, prev_x)) ~= 0
        prev_x = x;
        %x = x+x*(1-a*x*x)/2;
        t = mul_flp(a,x);
        t = mul_flp(t,x);
        t = sub_flp(to_flp(1,N),t);
        t = mul_flp(t,to_flp(0.5,N));
        t = mul_flp(t,x);
        x = add_flp(x,t);
    end
    
    % Calculate sqrt(a) as a * 1/sqrt(a)
    c = mul_flp(a,x);
    
end