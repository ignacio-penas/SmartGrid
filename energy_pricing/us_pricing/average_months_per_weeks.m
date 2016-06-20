months_by_weeks = zeros(12,7,6);
counter_months_by_weeks = zeros(12,7,6);
average_months_by_weeks = zeros(12,7,6);

begin_date = datetime('01-Jan-2013 00:00:00');
begin_date = datenum(begin_date);
end_loop = datetime('01-Jan-2014 00:00:00');
end_loop = datenum(end_loop);
disp('2013');
%%2014
while (begin_date < end_loop)
    current_hour = hour(begin_date);
    current_day_of_week = weekday(begin_date);
    current_month = month(begin_date);
    current_day_of_month = day(begin_date);
    begin_date = datestr(begin_date);
    begin_date = datetime(begin_date);
    current_week = week(begin_date,'weekofmonth');
    begin_date = datenum(begin_date);
    months_by_weeks(current_month, current_day_of_week, current_week) = months_by_weeks(current_month, current_day_of_week, current_week) + year2013(current_month, current_day_of_month,current_hour+1);
    counter_months_by_weeks(current_month, current_day_of_week, current_week) = counter_months_by_weeks(current_month, current_day_of_week, current_week) + 1;
    begin_date =  addtodate(begin_date, 1, 'hour');
end;

begin_date = datetime('01-Jan-2014 00:00:01');
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
    begin_date = datestr(begin_date);
    begin_date = datetime(begin_date);
    current_week = week(begin_date,'weekofmonth');
    begin_date = datenum(begin_date);

    months_by_weeks(current_month, current_day_of_week, current_week) = months_by_weeks(current_month, current_day_of_week, current_week) + year2014(current_month, current_day_of_month,current_hour+1);
    counter_months_by_weeks(current_month, current_day_of_week, current_week) = counter_months_by_weeks(current_month, current_day_of_week, current_week) + 1;
    begin_date =  addtodate(begin_date, 1, 'hour');
end;

begin_date = datetime('01-Jan-2015 00:00:01');
begin_date = datenum(begin_date);
end_loop = datetime('01-Jan-2016 00:00:00');
end_loop = datenum(end_loop);
disp('2015');
%%2014
while (begin_date < end_loop)
    current_hour = hour(begin_date);
    current_day_of_week = weekday(begin_date);
    current_month = month(begin_date);
    current_day_of_month = day(begin_date);
    begin_date = datestr(begin_date);
    begin_date = datetime(begin_date);
    current_week = week(begin_date,'weekofmonth');
    begin_date = datenum(begin_date);

    months_by_weeks(current_month, current_day_of_week, current_week) = months_by_weeks(current_month, current_day_of_week, current_week) + year2015(current_month, current_day_of_month,current_hour+1);
    counter_months_by_weeks(current_month, current_day_of_week, current_week) = counter_months_by_weeks(current_month, current_day_of_week, current_week) + 1;
    begin_date =  addtodate(begin_date, 1, 'hour');
end;



begin_date = datetime('01-Jan-2016 00:00:00');
begin_date = datenum(begin_date);
end_loop = datetime('01-May-2016 00:00:00');
end_loop = datenum(end_loop);
disp('2016');
%%2014
while (begin_date < end_loop)
    current_hour = hour(begin_date);
    current_day_of_week = weekday(begin_date);
    current_month = month(begin_date);
    current_day_of_month = day(begin_date);
    begin_date = datestr(begin_date);
    begin_date = datetime(begin_date);
    current_week = week(begin_date,'weekofmonth');
    begin_date = datenum(begin_date);

    months_by_weeks(current_month, current_day_of_week, current_week) = months_by_weeks(current_month, current_day_of_week, current_week) + year2016(current_month, current_day_of_month,current_hour+1);
    counter_months_by_weeks(current_month, current_day_of_week, current_week) = counter_months_by_weeks(current_month, current_day_of_week, current_week) + 1;
    begin_date =  addtodate(begin_date, 1, 'hour');
end;

average_months_by_weeks = months_by_weeks./counter_months_by_weeks;