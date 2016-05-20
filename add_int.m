function [c] = add_int(a,b)
%ADD_INT Adds two integers represented as arrays.
%
%   a, b, and c are arrays where each element is a digit 
%   in a high precision representation of an integer.

    % Append zeros to a or b so they are the same length.
    Na = length(a);
    Nb = length(b);
    N = max(Na, Nb);
    a = [a zeros(1,N-Na)];
    b = [b zeros(1,N-Nb)];
    
    % Result to be calculated.
    c = zeros(1,N);
    
    % Addition algorithm.
    carry = 0;
    for i = 1:N
        sum = a(i) + b(i) + carry;
        if sum > 9
           c(i) = sum - 10;
           carry = 1;
        else
           c(i) = sum;
           carry = 0;
        end
    end
    
    % If we have a non-zero final carry, add it
    % as a new most significant digit.
    if carry ~= 0
       c = [c carry]; 
    end

end
