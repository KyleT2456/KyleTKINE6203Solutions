function vecPlot(y1,y2)
%This function requires two separate 1x2 vectors (y1 and y2) that represent
%the y-values to be graphed against x-values 0 and 1. Each input should be
%entered as a 1x2 matrix. For example, vecPlot([3 2], [2 5]). In this
%example, row 1, column 1 of the first input represents the point (0, 3)
%and row 1, column 2 represents the point (1, 2). For the second input, a
%new line is created with the y-values specified, again to be plotted
%against x-values of 0 and 1, respectively.
x = [0 1]
figure
plot(x,y1,x,y2)
title('Line Plot')
xlabel('x-axis')
ylabel('y-axis')
end

