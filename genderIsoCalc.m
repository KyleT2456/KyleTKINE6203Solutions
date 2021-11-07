function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] =  genderIsoCalc(Day1,Day2,Day3,Gender)
%This function is to be used specifically on the isok_data_6803.csv file.
%This function accepts 4 inputs: Day1, Day2, Day3, and Gender. The input
%names dictate what is to be enterd as inputs(the variables of the same
%name from isok_data_6803.csv. 
dayAverage=(Day1+Day2+Day3)/3; %dayAverage takes the average strength values of Day1, Day2, and Day3. The operation is performed row by row.
maleData=Gender=='M'; %maleData ouputs index of all male subjects ('M') from the Gender variable.
femaleData=Gender=='F';%femaleData ouputs index of all female subjects ('F') from the Gender variable.
maleIsoIndMeans=dayAverage(maleData); %maleIsoIndMeans is an output variable. It assigns an array of male Day1-Day3 averages based on indexes found from maleData.
femaleIsoIndMeans=dayAverage(femaleData); %femaleIsoIndMeans is an output variable. It assigns an array of female Day1-Day3 averages based on indexes found from femaleData.
maleGroupIsoMean=mean(maleIsoIndMeans); %maleGroupIsoMean is an output variable. It takes the overall mean value from the male strength data from maleIsoIndMeans.
femaleGroupIsoMean=mean(femaleIsoIndMeans); %femaleGroupIsoMean is an output variable. It takes the overall mean value from the female strength data from femaleIsoIndMeans.
end

