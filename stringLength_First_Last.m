function [length,firstLet,lastLet] = stringLength_First_Last(string)
%This function accepts a single input as a text string and will return
%three outputs: the length of the string, the first letter of the string,
%and the last letter of the string. For example,
%stringLength_First_Last('hello') would return values length = 5, firstLet
%= 'h', lastLet = 'o'.
length = strlength(string)
firstLet = string(1)
lastLet = string(end)
end

