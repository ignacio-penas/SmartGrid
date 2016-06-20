
function [months] = data_extractor(dir)

    cd ~/tfg/data_warehouse/us_pricing/

    fdat=fopen(dir, 'r');
    months = [];
    ite = 0;
    nline=fgetl(fdat);
    while 1
        ite = 0;
        for i = 1:4
            nline=fgetl(fdat);
            if nline == -1
                break;
            end;
            separate = strsplit(nline, ',');
            ite = ite + str2double(separate(2));

        end;
        if nline == -1
                break;
        end;
        date = strsplit(strjoin(separate(1)), ' ');
        [y,x] = size(date);

        if x > 1
            day = strsplit(strjoin(date(1)), '/');
            hora = strsplit(strjoin(date(2)), ':');
            hora = str2double(hora(1));
            franja = strjoin(date(3));
            ite = ite/4;
            %disp(str2double(day(2)));
            if(strcmp(franja, 'PM') && hora ~= 12)
                
                months(str2double(day(2)), hora + 13) = ite;
            else
                months(str2double(day(2)), hora+1) = ite;
            end;
        else
            ite = ite/4;
            day = strsplit(strjoin(date(1)), '/');
            months(str2double(day(2)), 1) = ite;
        end;
    end;

    cd ~/tfg/SmartGrid/energy_pricing/us_pricing
