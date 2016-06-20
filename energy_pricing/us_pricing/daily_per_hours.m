%array_extractor;

average_week_days = zeros(24,7);
counter_average_week_days = zeros(24,7);

begin_date = datetime('01-Jan-2013 00:00:00');
begin_date = datenum(begin_date);
end_loop = datetime('01-Jan-2014 00:00:00');
end_loop = datenum(end_loop);
disp('2013');
%%2013
while (begin_date < end_loop)
    current_hour = hour(begin_date);
    current_day_of_week = weekday(begin_date);
    current_month = month(begin_date);
    current_day_of_month = day(begin_date);
    average_week_days(current_hour + 1, current_day_of_week) = average_week_days(current_hour + 1, current_day_of_week) + year2013(current_month, current_day_of_month, current_hour + 1);
    counter_average_week_days(current_hour + 1, current_day_of_week) = counter_average_week_days(current_hour + 1, current_day_of_week) + 1; 
    begin_date =  addtodate(begin_date, 1, 'hour');
end;

begin_date = datetime('01-Jan-2014 00:00:00');
begin_date = datenum(begin_date);
end_loop = datetime('01-Jan-2015 00:00:00');
end_loop = datenum(end_loop);
disp('2014');
%%2014
while (begin_date < end_loop)
    current_hour = hour(begin_date);
    current_day_of_week = weekday(begin_date);
    current_month = month(begin_date);
    current_day_of_month = day(begin_date);
    average_week_days(current_hour + 1, current_day_of_week) = average_week_days(current_hour + 1, current_day_of_week) + year2014(current_month, current_day_of_month, current_hour + 1);
    counter_average_week_days(current_hour + 1, current_day_of_week) = counter_average_week_days(current_hour + 1, current_day_of_week) + 1; 
    begin_date =  addtodate(begin_date, 1, 'hour');
end;

begin_date = datetime('01-Jan-2015 00:00:00');
begin_date = datenum(begin_date);
end_loop = datetime('01-Jan-2016 00:00:00');
end_loop = datenum(end_loop);
disp('2015');
%%2015
while (begin_date < end_loop)
    current_hour = hour(begin_date);
    current_day_of_week = weekday(begin_date);
    current_month = month(begin_date);
    current_day_of_month = day(begin_date);
    average_week_days(current_hour + 1, current_day_of_week) = average_week_days(current_hour + 1, current_day_of_week) + year2015(current_month, current_day_of_month, current_hour + 1);
    counter_average_week_days(current_hour + 1, current_day_of_week) = counter_average_week_days(current_hour + 1, current_day_of_week) + 1; 
    begin_date = addtodate(begin_date, 1, 'hour');
end;

begin_date = datetime('01-Jan-2016 00:00:00');
begin_date = datenum(begin_date);
end_loop = datetime('01-May-2016 00:00:00');
end_loop = datenum(end_loop);
disp('2016');
%%2016
while (begin_date < end_loop)
    current_hour = hour(begin_date);
    current_day_of_week = weekday(begin_date);
    current_month = month(begin_date);
    current_day_of_month = day(begin_date);
    average_week_days(current_hour + 1, current_day_of_week) = average_week_days(current_hour + 1, current_day_of_week) + year2016(current_month, current_day_of_month, current_hour + 1);
    counter_average_week_days(current_hour + 1, current_day_of_week) = counter_average_week_days(current_hour + 1, current_day_of_week) + 1; 
    begin_date = addtodate(begin_date, 1, 'hour');
end;