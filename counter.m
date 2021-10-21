function  counter(lowNum,highNum)
%This function accepts two integer inputs. The first input (lowNum) is the
%number that this function will begin counting from. The second input
%(highNum) is the number that this function will count to. The counter will
%display a row vector from lowNum to highNum at an increment of 1. **Be sure
%to input only integer values and also be sure to assign lowNum to the
%lowest number in the vector and highNum to the last number in the count.**

vec = [lowNum:1:highNum]
clc
disp(vec);
end

