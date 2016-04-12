
function [dia] = data_extractor(dir)

    cd /home/nacho/tfg/data_warehouse/energy_pricing/www.omie.es/datosPub/marginalpdbc

    fdat=fopen(dir, 'r');
    dia = [];
    ite = zeros(1,8);
    for i = 1:25
        if i ~= 1
            disp(dir);
            nline=fgetl(fdat); %resto de lineas
            separate = strsplit(nline, ';'); %Dividimos los strings por ;. Devuelve un array d eceldas
            [y,x] = size(separate);

            for j = 1:x
                ite(j) = str2double(separate(j));

            end
            dia(i, :) = ite(1,:);
        else
            nline=fgetl(fdat); %primera linea
        end

    end

    cd /home/nacho/tfg/SmartGrid/energy_pricing/matlab
