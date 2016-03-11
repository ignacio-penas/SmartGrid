function [ ddays ] = split_HDM()
    today = datetime;
    aux_day = datenum(today);
    week = zeros(7, 24);
    avg_week = zeros(7, 1);
    number_of_days = zeros(7,1);
    ddays = zeros(24, 7, 12);
    n_dday = zeros(24, 7, 12);
    
    %Calculamos el numero de dias desde hoy hasta el 31 de enero de 2016 
    %para emplear en la iteracion
    n_day_from_31jan = floor(daysact('31-jan-2016', aux_day));
    for i = n_day_from_31jan : (n_day_from_31jan + 757)
        day_before = addtodate(aux_day, -i, 'day');
        day_before = datestr(day_before);
        day_before = datetime(day_before);
        %Extracción del numero de la semana para ordenar en el array
        n_week_day = weekday(day_before);
        n_month_day = month(day_before);
        
        
        day_before = yyyymmdd(day_before);
        file_name = ['marginalpdbc_', num2str(day_before), '.1'];
        disp(file_name);
        dia = data_extractor(file_name);
        for j = 1:24
            %Diferenciando el día de la semana, acumulamos el precio por
            %horas
            dday(j, n_week_day, n_month_day) = dday(j, n_week_day, n_month_day) + dia(j+1, 6);
        end
    end
    
    for w = 1:7
        %Media de los dias de la semana por horas
        week(w, :) = week(w, :)/number_of_days(w);
        
            for h = 1:24
                %Media total de cada dia de la semana
                avg_week(w) = avg_week(w) + week(w, h);
            end;
        avg_week(w) = avg_week(w)/24;
    end
end

