function [c,sign] = sub_int(a,b)
%SUB_INT Subtracts two integers represented as arrays.
%
%   a, b, and c are arrays where each element is a digit 
%   in a high precision representation of an integer.
%   sign is +1 if number a is larger than b, -1 if it is 
%   smaller, and 0 if they are equal.

    % Append zeros to a or b so they are the same length.
    Na = length(a);
    Nb = length(b);
    N = max(Na, Nb);
    a = [a zeros(1,N-Na)];
    b = [b zeros(1,N-Nb)];
    
    % Result to be calculated.
    c = zeros(1,N);
    
    % Find out which number is larger.
    sign = compare_int(a,b);
    
    % If b is larger than a, calculate -(b-a) (which is a-b)
    % by swapping a and b in the remainder of the algorithm.
    % We thus always subtract the smallest from the largest 
    % number.
    if sign == -1
        temp = a;
        a = b;
        b = temp;
    end
    
    % Subtraction algorithm.
    carry = 0;
    last_nonzero_digit = 0;
    for i = 1:N
        diff = a(i) - b(i) - carry;
        if diff < 0
            c(i) = diff + 10;
            carry = 1;
        else
            c(i) = diff;
            carry = 0;
        end
        if c(i) > 0
            last_nonzero_digit = i;
        end
    end
    
    % Make sure we don't return unnecessary leading zeros.
    if last_nonzero_digit == 0
        c = 0;
    else
        c = c(1:last_nonzero_digit);
    end
    
end
