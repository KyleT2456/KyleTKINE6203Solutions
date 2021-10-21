function [sum,diff,prod,max] = sumDiffProdMax(inputArg1,inputArg2)
%This function accepts two numeric input arguments. Four outputs will be
%generated: the sum of the two inputs, the difference of the two inputs
%(inputARg1 - inputArg2), the product of the two inputs, and the max value
%of the two inputs (the larger of the two inputs).
sum = (inputArg1 + inputArg2)
diff = (inputArg1 - inputArg2)
prod = (inputArg1 * inputArg2)
if inputArg1 > inputArg2
    max = inputArg1
else
    max = inputArg2
end
end

