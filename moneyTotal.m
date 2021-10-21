function [moneyAmount] = moneyTotal(quarters,dimes,nickels,pennies)
%This function accepts 4 integer inputs. When this function, "moneyTotal"
%is called, the user will be prompted to enter in the number of quarters,
%dimes, nickels, and pennies to be counted , respectively; hence, order
%matters. Also note, fractions of coins do not hold market value and thus, only
%integer values should be entered. The output variable, "moneyAmount", will
%display the money total in dollar and cent amount. For example, the input
%moneyTotal(4,10,20,111) would return the output moneyAmount = 4.1100. This
%means the user has $4.11 worth of coins. 
moneyAmount = (.25*quarters)+(.1*dimes)+(.05*nickels)+(.01*pennies)

end

