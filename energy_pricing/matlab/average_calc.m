function [months, aux_months] = average_calc()

    today = datetime;
    aux_day = datenum(today);
    months = zeros(12,24);
    aux_months = [6 6 6 5 5 5 5 5 5 5 5 5];
    hours_avg = zeros(1,24);
    %Días desde el enero de 2011 hasta hoy
    n_days_from_1jan = floor(daysact('01-jan-2011', aux_day));
    n_days_from_1apr = floor(daysact('01-apr-2016', aux_day)) + 1;
    disp(n_days_from_1apr);
    
    for i = n_days_from_1apr : (n_days_from_1jan)
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
        month_days = eomday(2014, i);%Extract each month days
        months(i, :) = months(i, :)/(24*aux_months(i));
    end
