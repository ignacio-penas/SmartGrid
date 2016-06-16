function [ daily_workload ] = finnest_24hours( diaOptimized )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    daily_workload = zeros(24,1);
    unixTime = 1296571124;
    [x,y] = size(diaOptimized);
    
    for i = 1:y
        time = unix2matlab( (diaOptimized(1, i) + unixTime)*1000);
		time = datetime(time);
        h = hour(time) + 1;
        
        process_last = round((diaOptimized(2, i))/3600);
        disp(i);
        for j = 0:process_last
            cycle_counter = mod((h+j),24);
            daily_workload(cycle_counter+1) =  daily_workload(cycle_counter+1) + diaOptimized(3, i);
        end;
    end;

end

