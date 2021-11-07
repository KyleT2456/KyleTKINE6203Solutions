function [dtoDImprov] = dayComparer(SubjectID,DayA,DayB)
%This function is to be used specifically on the isok_data_6803.csv file.
%This function accepts 3 inputs: Subject ID, DayA, and DayB. The input
%names indicate what to enter as inputs: Subject ID variable from
%iso_data_6803.csv, one of the Day variables (1-3) from the same file for
%DayA and the consecutive day entered into DayB.
improvementDays=find(DayB>DayA); %improvementDays finds the Days that the subject improved from the first day to the next day.
dtoDImprov=SubjectID(improvementDays);%dtoDImprov is an output variable that returns the SubjectIDs of subjects that improved from one day to the next.
end

