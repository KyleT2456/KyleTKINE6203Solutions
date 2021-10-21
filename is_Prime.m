function [prime] = is_Prime(inputArg1)
%This function accepts a single numeric input and will return a logical
%answer of 1 (true) if the input is a prime number or will return a logical
%answer of 0 (false) if the input is not a prime number.
 prime = isprime(inputArg1);
end

