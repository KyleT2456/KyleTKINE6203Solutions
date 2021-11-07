[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv', [2, Inf]);
%See function file for details on function. The above function is designed to import the Assignment 4 datasheet
%'isok_data_6803.csv' as separate column vectors, with the vectors to
%import indicated by the outputs portion of the equation [SubjectID, Age,
%Gender, Weight, Day1, Day2, Day3]. The variable name of each vector
%corresponds to the column header in the imported file (also indicated by
%the defined outputs).
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Day1,Day2,Day3,Gender);
%See function file for details on function. The above line calls the genderIsoCalc function and utilizes the inputs of
%Day1, Day2, Day3, and Gender. Outputs are stored in
%maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean, and femaleGroupIsoMean.
[day1toDay2] = dayComparer(SubjectID,Day1,Day2); %See function file for details on function. day1toDay2 shows SubjectIDs of subjects who improved strength from Day1 to Day2.
[day2toDay3] = dayComparer(SubjectID,Day2,Day3); %See function file for details on function. day2toDay3 shows SubjectIDs of subjects who improved strength from Day2 to Day3.
normDay1mean = Day1./Weight; %normDay1mean shows weight normalized (strength value/Weight) strength values by subject for Day1.
normDay2mean = Day2./Weight; %normDay2mean shows weight normalized (strength value/Weight) strength values by subject for Day2.
normDay3mean = Day3./Weight; %normDay3mean shows weight normalized (strength value/Weight) strength values by subject for Day3.
femaleIsoIndMeans(numel(SubjectID)) = 0;
maleIsoIndMeans(numel(SubjectID)) = 0;
femaleGroupIsoMean(numel(SubjectID)) = 0;
femaleGroupIsoMean = femaleGroupIsoMean';%This inverts the previous line of code so that femaleGroupIsoMean is 25x1 and not 1x25.
maleGroupIsoMean(numel(SubjectID)) = 0;
maleGroupIsoMean = maleGroupIsoMean';%This inverts the previous line of code so that maleGroupIsoMean is 25x1 and not 1x25.
day1toDay2(numel(SubjectID)) = 0;
day2toDay3(numel(SubjectID)) = 0;
%The previous eight lines of code above sets all variables to a 25x1 matrix
%by padding with the value zero at the end of any matrix shorter than 25
%rows.
combineDescStats= table(maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean,day1toDay2,day2toDay3,normDay1mean,normDay2mean,normDay3mean);
%The above line creates a variable, combineDescStats, that combines all of
%the descriptive statistics variables calculated during this assignment
%into a 25x9 table with
%maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean,day1toDay2,day2toDay3,normDay1mean,normDay2mean, and normDay3mean.
writetable(combineDescStats,'iso_results.csv'); %This line creates an excel (csv) file containing the table from combineDescStats variable.