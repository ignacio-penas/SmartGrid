function [week] = average_week()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    today = datetime;
    aux_day = datenum(today);
    week = zeros(52,24);
    week_number = 0;
    hours_avg = zeros(1,24);
    max_price = 0;
    
    for i = :779
        day_before = addtodate(aux_day, -i, 'day');
        day_before = datestr(day_before);
        day_before = datetime(day_before);
        temp_day = day(day_before,'dayofweek');
        week_number = week(day_before);
        day_before = yyyymmdd(day_before);
        file_name = ['marginalpdbc_', num2str(day_before), '.1'];
        disp(file_name);
        dia = data_extractor(file_name);
        for j = 1:24
            hours_avg(j) = hours_avg(j) + dia(j+1, 6);
            disp(dia(j+1, 6));
            week(temp_day, j) = week(temp_day, j) + dia(j+1, 6);
        end
    end


end

