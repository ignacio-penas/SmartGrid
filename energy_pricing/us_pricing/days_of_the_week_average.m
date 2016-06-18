array_extractor;

days_pricing = [];
counter_days_pricing = zeros(7,1);


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
    days_pricing(current_day_of_week, counter_days_pricing(current_day_of_week)+1) = year2014(current_month, current_day_of_month, current_hour + 1);
    counter_days_pricing(current_day_of_week) = counter_days_pricing(current_day_of_week) + 1;
    begin_date =  addtodate(begin_date, 1, 'hour');
end;



begin_date = datetime('01-Jan-2015 00:00:00');
begin_date = datenum(begin_date);
end_loop = datetime('01-Jan-2016 00:00:00');
end_loop = datenum(end_loop);
disp('2015');
while (begin_date < end_loop)
    current_hour = hour(begin_date);
    current_day_of_week = weekday(begin_date);
    current_month = month(begin_date);
    current_day_of_month = day(begin_date);
    days_pricing(current_day_of_week, counter_days_pricing(current_day_of_week)+1) = year2015(current_month, current_day_of_month, current_hour + 1);
    counter_days_pricing(current_day_of_week) = counter_days_pricing(current_day_of_week) + 1;
    begin_date =  addtodate(begin_date, 1, 'hour');
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
    days_pricing(current_day_of_week, counter_days_pricing(current_day_of_week)+1) = year2016(current_month, current_day_of_month, current_hour + 1);
    counter_days_pricing(current_day_of_week) = counter_days_pricing(current_day_of_week) + 1;
    begin_date =  addtodate(begin_date, 1, 'hour');
end;


plotting_var = days_pricing.';