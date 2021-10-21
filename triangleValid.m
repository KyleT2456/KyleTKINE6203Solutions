function triangle = triangleValid(triArray)
%This function requires an input of a three item array that will represent
%the three side lengths (arbitrary units) of a supposed triangle. For example, triangleValid([3 5 7]) The rules
%of a triangle states that the sum of any two sides must be greater than
%the length of the third side. If the three values entered meet the
%criteria of a triangle, the function will return a logical output of 1
%(true) and if the sides do not represent a valid triangle, the function
%will return a logical output of 0 or false.
order = sort(triArray)
if triArray(1) + triArray(2) > triArray(3)
    triangle = true
else
    triangle = false
end

