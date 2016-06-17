
function [month] = data_extractor(dir)

    cd ~/tfg/data_warehouse/us_pricing/

    fdat=fopen(dir, 'r');
    month = [];
    ite = 1;
    
    while 1
        nline=fgetl(fdat);
        if nline == -1
            break;
        end;
        if ite ~= 1
            for i = 1:4
                
                separate = strsplit(nline, ',');
                
            end;
        end;
    end;
    
    separate = strsplit(nline, ';'); %Dividimos los strings por ;. Devuelve un array d eceldas
    [y,x] = size(separate);

    cd ~/tfg/SmartGrid/energy_pricing/us_pricing
