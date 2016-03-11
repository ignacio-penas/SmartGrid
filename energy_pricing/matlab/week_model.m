function [week, avg_week, max_price] = week_model()
%Function that extracts a weekly model of the price by hours
    today = datetime;
    aux_day = datenum(today);
    week = zeros(7, 24);
    avg_week = zeros(7, 1);
    number_of_days = zeros(7,1);
    max_price= 0;
    max_price_day = datenum(today);
    
    for i = 40:797
        day_before = addtodate(aux_day, -i, 'day');
        day_before = datestr(day_before);
        day_before = datetime(day_before);
        %Extracción del numero de la semana para ordenar en el array
        dayNumber = weekday(day_before);
        number_of_days(dayNumber) = number_of_days(dayNumber) + 1;
        day_before = yyyymmdd(day_before);
        file_name = ['marginalpdbc_', num2str(day_before), '.1'];
        disp(file_name);
        dia = data_extractor(file_name);
        for j = 1:24
            %Diferenciando el día de la semana, acumulamos el precio por
            %horas
            week(dayNumber, j) = week(dayNumber, j) + dia(j+1, 6);
            disp(dia(j+1, 6));
            if dia(j+1, 5) >= max_price
                max_price = dia(j+1, 6);
                max_price_day = day_before;
            end;
        end
    end
    disp(max_price_day);
    disp(max_price);
    disp(number_of_days);
    for w = 1:7
        %Media de los dias de la semana por horas
        week(w, :) = week(w, :)/number_of_days(w);
        
            for h = 1:24
                %Media total de cada dia de la semana
                avg_week(w) = avg_week(w) + week(w, h);
            end;
        avg_week(w) = avg_week(w)/24;
    end
    
    