function [day] = days_extractor()
    %Extracts two years of prices in the day array
    %Almacenamos cada dia de la semana en una fila
    
    number_of_days = zeros(7,1);
    today = datetime;
    aux_day = datenum(today);
    n_day_from_1jan = floor(daysact('1-jan-2011', aux_day));
    day = zeros(n_day_from_1jan, 7);
    
    for i = 1 : (n_day_from_1jan)
        day_before = addtodate(aux_day, -i, 'day');
        dayNumber = weekday(day_before);
        day_before = datestr(day_before);
        day_before = datetime(day_before);
        day_before = yyyymmdd(day_before);
        
        number_of_days(dayNumber) = number_of_days(dayNumber) + 1;
        %Recovery of the pricing file
        file_name = ['marginalpdbc_', num2str(day_before), '.1'];
        dia = data_extractor(file_name);
        particular_day = 0;
        
        for j = 1:24
            particular_day = particular_day + dia(j+1, 6);
        end;
        
        particular_day = particular_day/24;
        day(number_of_days(dayNumber), dayNumber) = particular_day;
    end;
end

