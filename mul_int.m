function [c] = mul_int(a,b)
%MUL_INT Multiplies two integers represented as arrays.
%
%   a, b, and c are arrays where each element is a digit 
%   in a high precision representation of an integer.

    % Quickly handle the 'absorbing element' case
    if all(a == 0) || all(b == 0)
        c = 0;
        return;
    end

    % Append zeros to a or b so they are both 2N long.
    Na = length(a);
    Nb = length(b);
    N = max(Na, Nb);
    a = [a zeros(1,2*N-Na)];
    b = [b zeros(1,2*N-Nb)];
    
    % Calculate the coefficients of c(x)=a(x)*b(x)
    % if a and b where coefficients of a polynomial, 
    % using the discrete fourier transform trick.
    c = round(ifft(fft(a).*fft(b)));
    
    % Do carries.
    carry = 0;
    for i = 1:2*N
        c(i) = c(i) + carry;
        carry = floor(c(i)/10);
        c(i) = mod(c(i), 10);
    end
    
    % Make sure we don't return unnecessary trailing zeros.
    c = c(1:Na+Nb);
    % If the most significant digit is zero, remove it.
    if c(end) == 0
        c = c(1:end-1);
    end
    
end
