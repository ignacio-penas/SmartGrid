function [years] = average_per_year()
    %Extracts two years of prices in the day array
    day = zeros(110, 7);
    number_of_days = zeros(7,1);
    today = datetime;
    aux_day = datenum(today);
    
    %Días desde el enero de 2011 hasta hoy
    n_day_from_1jan = floor(daysact('01-jan-2011', aux_day));
    
    for i = n_day_from_1jan : (n_day_from_1jan + 757)
        %Date reformat
        day_before = addtodate(aux_day, -i, 'day');
        dayNumber = weekday(day_before);
        day_before = datestr(day_before);
        day_before = datetime(day_before);
        day_before = yyyymmdd(day_before);
        
        %Accumulator for calculating averages
        number_of_days(dayNumber) = number_of_days(dayNumber) + 1;
        
        %Recovery of the pricing file
        file_name = ['marginalpdbc_', num2str(day_before), '.1'];
        dia = data_extractor(file_name);
        for j = 1:24
            particular_day = particular_day + dia(j+1, 6);
        end;
        
        particular_day = particular_day/24;
        day(number_of_days(dayNumber), dayNumber) = particular_day;
    end;
end

