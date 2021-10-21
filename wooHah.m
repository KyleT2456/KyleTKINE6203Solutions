function [wooOrHah] = wooHah(inputArg1,inputArg2)
%This function accepts two numeric inputs, summates them, and then returns
%the string "Woo" if the sum is even or returns "Hah" if the sum is odd.
sum = inputArg1 + inputArg2
if mod(sum,2) == 0
    wooOrHah = 'Woo'
else
    wooOrHah = 'Hah'
end

