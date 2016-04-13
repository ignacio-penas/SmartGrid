function [ uk_months_pricing ] = uk_average_week_per_months( yy2013, yy2014, yy2015 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    uk_months_pricing = zeros(7,6,12);
    aux_uk_months_pricing = zeros(7,6,12);
    
    aux_day_average = zeros(1,24);
    
    date1 = 0;
    acum = 0;
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
        
        if date1 ~= weekDay
            date1 = weekDay;
            for j = 1 : 24
                acum = acum + aux_day_average(j);
            end;
            acum = acum/24;
            uk_months_pricing(weekDay,week_on_month, monthNbr) = uk_months_pricing(weekDay,week_on_month, monthNbr) + acum;
            aux_uk_months_pricing(weekDay,week_on_month, monthNbr) = aux_uk_months_pricing(weekDay,week_on_month, monthNbr) + acum;
        end
        
        if first == 0 || m~=0 || s ~= 0
            if ((m == 0) && (s == 0))
                disp('hour 1');
                aux_day_average(h+1) = str2double(yy2013(i).price);
                disp('hora');
                disp(h);
                first = 1;
            end
            i = i +1;
        else
            if ((m == 0) && (s == 0))
                disp('hour by hour 1');
                disp(i);
                aux_day_average(h+1) = str2double(yy2013(i).price);
            else
                first = 0;
            end
            i = i + 12;
        end
    end
    
    for k = 1 : 7
        for l = 1 : 6
            for m = 1 : 12
                if uk_months_pricing(k, l, m) ~= 0
                    uk_months_pricing(k, l, m) = uk_months_pricing(k, l, m)/aux_uk_months_pricing(k, l, m);
                end
            end
        end
    end
end

