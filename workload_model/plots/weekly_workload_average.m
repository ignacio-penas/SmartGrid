function [ weekly_workload,  counter_weekly_workload, display_weeks] = weekly_workload_average( diaOptimized )
%Week_averaging This functions implements the same functionality
%   

weekly_workload = zeros(6,7,12);
counter_weekly_workload = zeros(6,7,12);
display_weeks = zeros(6,7,12);
unixTime = 1296571124;
[x,y] = size(diaOptimized);

for i = 1:y
    disp(i);
   time = unix2matlab( (diaOptimized(1, i) + unixTime)*1000);
   time = datetime(time);
   currentMonth = month(time);
   currentNumberWeek = week(time, 'weekofmonth');
   currentDayOnWeek = day(time,'dayofweek');
   
   weekly_workload(currentNumberWeek, currentDayOnWeek, currentMonth) = weekly_workload(currentNumberWeek, currentDayOnWeek, currentMonth) + diaOptimized(3,i);
   counter_weekly_workload(currentNumberWeek, currentDayOnWeek, currentMonth) = counter_weekly_workload(currentNumberWeek, currentDayOnWeek, currentMonth) + 1;
end

display_weeks = weekly_workload ./ counter_weekly_workload;


end

