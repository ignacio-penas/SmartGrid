function [ uk_months_pricing, aux_uk_months_pricing ] = uk_average_week_per_months( yy2013, yy2014, yy2015 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

uk_months_pricing = zeros(7,6,12);
aux_uk_months_pricing = zeros(7,6,12);

aux_day_average = zeros(1,24);

date = 0;
acum = 0;
day_avg = 0;
long = size(yy2013);
long = double(long(2));
i = 1;
first = 0;
while i <= long
    tempEpoch = str2double(yy2013(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    
    %Extract each case to put into the arrays
    monthDay = day(date,'dayofmonth');
    yearDay = day(date,'dayofyear');
    weekDay = day(date,'dayofweek');
    monthNbr = month(date);
    week_on_month = week(date, 'weekofmonth');
    [h,m,s] = hms(date);
    
    
    aux_month_day = monthDay;
    acum = 0;
    while ((aux_month_day == monthDay))
        
        if (m == 0) && (s == 0)
            acum = acum + 1;
            day_avg = day_avg + str2double(yy2013(i).price);
            i = i + 12;
        else
            i = i + 1;
        end;
        disp(i);
        if i > long
            disp('lalalalalalala');
            break;
        end;
        tempEpoch = str2double(yy2013(i).millisUTC);
        date = unix2matlab(tempEpoch);
        date = datetime(date);
        %Extract each case to put into the arrays
        monthDay = day(date,'dayofmonth');
        [h,m,s] = hms(date); 
    end
    if acum ~= 0
        day_avg = day_avg/acum;
        uk_months_pricing(weekDay, week_on_month, monthNbr) = uk_months_pricing(weekDay, week_on_month, monthNbr) + day_avg;
        aux_uk_months_pricing(weekDay, week_on_month, monthNbr) = aux_uk_months_pricing(weekDay, week_on_month, monthNbr)  + 1;
    end;
    
end

date = 0;
acum = 0;
day_avg = 0;
long = size(yy2014);
long = double(long(2));
i = 1;
first = 0;
while i <= long
    tempEpoch = str2double(yy2014(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    
    %Extract each case to put into the arrays
    monthDay = day(date,'dayofmonth');
    yearDay = day(date,'dayofyear');
    weekDay = day(date,'dayofweek');
    monthNbr = month(date);
    week_on_month = week(date, 'weekofmonth');
    [h,m,s] = hms(date);
    
    
    aux_month_day = monthDay;
    acum = 0;
    while ((aux_month_day == monthDay))
        
        if (m == 0) && (s == 0)
            acum = acum + 1;
            day_avg = day_avg + str2double(yy2014(i).price);
            i = i + 12;
        else
            i = i + 1;
        end;
        disp(i);
        if i > long
            disp('lalalalalalala');
            break;
        end;
        tempEpoch = str2double(yy2014(i).millisUTC);
        date = unix2matlab(tempEpoch);
        date = datetime(date);
        %Extract each case to put into the arrays
        monthDay = day(date,'dayofmonth');
        [h,m,s] = hms(date); 
    end
    if acum ~= 0
        day_avg = day_avg/acum;
        uk_months_pricing(weekDay, week_on_month, monthNbr) = uk_months_pricing(weekDay, week_on_month, monthNbr) + day_avg;
        aux_uk_months_pricing(weekDay, week_on_month, monthNbr) = aux_uk_months_pricing(weekDay, week_on_month, monthNbr)  + 1;
    end;
    
end

date = 0;
acum = 0;
day_avg = 0;
long = size(yy2015);
long = double(long(2));
i = 1;
first = 0;
while i <= long
    tempEpoch = str2double(yy2015(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    
    %Extract each case to put into the arrays
    monthDay = day(date,'dayofmonth');
    yearDay = day(date,'dayofyear');
    weekDay = day(date,'dayofweek');
    monthNbr = month(date);
    week_on_month = week(date, 'weekofmonth');
    [h,m,s] = hms(date);
    
    
    aux_month_day = monthDay;
    acum = 0;
    while ((aux_month_day == monthDay))
        
        if (m == 0) && (s == 0)
            acum = acum + 1;
            day_avg = day_avg + str2double(yy2015(i).price);
            i = i + 12;
        else
            i = i + 1;
        end;
        disp(i);
        if i > long
            disp('lalalalalalala');
            break;
        end;
        tempEpoch = str2double(yy2015(i).millisUTC);
        date = unix2matlab(tempEpoch);
        date = datetime(date);
        %Extract each case to put into the arrays
        monthDay = day(date,'dayofmonth');
        [h,m,s] = hms(date); 
    end
    if acum ~= 0
        day_avg = day_avg/acum;
        uk_months_pricing(weekDay, week_on_month, monthNbr) = uk_months_pricing(weekDay, week_on_month, monthNbr) + day_avg;
        aux_uk_months_pricing(weekDay, week_on_month, monthNbr) = aux_uk_months_pricing(weekDay, week_on_month, monthNbr)  + 1;
    end;
    
end

