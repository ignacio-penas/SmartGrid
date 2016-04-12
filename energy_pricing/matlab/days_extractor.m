function [day] = days_extractor()
    %Extracts two years of prices in the day array
    %Almacenamos cada dia de la semana en una fila
    
    number_of_days = zeros(7,1);
    today = datetime;
    aux_day = datenum(today);
    
     %Días desde el enero de 2011 hasta hoy
    n_days_from_1jan = floor(daysact('01-jan-2011', aux_day));
    n_days_from_1apr = floor(daysact('01-apr-2016', aux_day)) + 1;
    disp(n_days_from_1apr);
    
    for i = n_days_from_1apr : (n_days_from_1jan)
        day_before = addtodate(aux_day, -i, 'day');
        dayNumber = weekday(day_before);
        day_before = datestr(day_before);
        day_before = datetime(day_before);
        day_before = yyyymmdd(day_before);
        
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
        day(number_of_days(dayNumber), dayNumber) = particular_day;
        
    end;
end

