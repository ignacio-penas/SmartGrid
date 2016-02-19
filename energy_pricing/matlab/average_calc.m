today = datetime;
aux_day = datenum(today);
acc_dia = 0;
months = zeros(12,24);
week = [];
hours_avg = zeros(1,24);
for i = 19:779
    day_before = addtodate(aux_day, -i, 'day');
    day_before = datestr(day_before);
    day_before = datetime(day_before);
    temp_month = month(day_before);
    day_before = yyyymmdd(day_before);
    file_name = ['marginalpdbc_', num2str(day_before), '.1'];
    disp(file_name);
    dia = data_extractor(file_name);
    for j = 1:24
        hours_avg(j) = hours_avg(j) + dia(j+1, 6);
        months(temp_month, j) = months(temp_month, j) + dia(j+1, 6);
    end
end

hours_avg = hours_avg/760;
for i = 1:12
    month_days = eomday(2014, i);
    months(i, :) = months(i, :)/(2*month_days);
end
    