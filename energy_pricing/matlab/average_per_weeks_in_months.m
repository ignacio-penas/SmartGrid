function [months_pricing] = average_per_weeks_in_months()
    %Extracts two years of prices in the day array
    number_of_days = zeros(7,1);
    today = datetime;
    aux_day = datenum(today);
    
    months_pricing = zeros(7, 6, 12);
    aux_month_pricing = zeros(7, 6, 12);
    num_weekly_days = zeros(53, 7);
    
    %Días desde el enero de 2011 hasta hoy
    n_days_from_1jan = floor(daysact('01-jan-2011', aux_day));
    n_days_from_1apr = floor(daysact('01-apr-2016', aux_day)) + 1;
    disp(n_days_from_1apr);
    
    for i = n_days_from_1apr : (n_days_from_1jan)
        %Date reformat
        day_before = addtodate(aux_day, -i, 'day');
        dayNumber = weekday(day_before);
        monthNumber = month(day_before);
        day_before = datestr(day_before);
        day_before = datetime(day_before);
        day_on_week = week(day_before, 'weekofmonth');
        day_before = yyyymmdd(day_before);
        
        %Accumulator for calculating averages
        number_of_days(dayNumber) = number_of_days(dayNumber) + 1;
        
        %Recovery of the pricing file
        file_name = ['marginalpdbc_', num2str(day_before), '.1'];
        dia = data_extractor(file_name);
        
        %Averaging each day
        particular_day = 0;
        count_hours = 0;
        for j = 1:24
            if dia(j+1, 6) ~= 0
                particular_day = particular_day + dia(j+1, 6);
                count_hours = count_hours + 1;
            end;
        end;
        particular_day = particular_day/count_hours;
        months_pricing(dayNumber, day_on_week, monthNumber) = months_pricing(dayNumber, day_on_week, monthNumber) + particular_day;
        aux_month_pricing(dayNumber, day_on_week, monthNumber) = aux_month_pricing(dayNumber, day_on_week, monthNumber)  + 1;
    end;
    for k = 1 : 7
        for l = 1 : 6
            for m = 1 : 12
                if months_pricing(k, l, m) ~= 0
                    months_pricing(k, l, m) = months_pricing(k, l, m)/aux_month_pricing(k, l, m);
                end
            end
        end
    end
end

