
function [ite] = data_extractor(file)

    cd /home/cloud/tfg/data_warehouse/cea_curie_workload

    fdat=fopen(file, 'r');
    ite = zeros(5, 550000);
    aux_line = zeros(1,50);
    i = 0;
    counter = 1;
    prima = 1;
    while (i ~= 1)
            nline=fgetl(fdat); %resto de lineas
            
            if (nline ~= -1)
                separate = strsplit(nline, ' '); %Dividimos los strings por ' ' Devuelve un array d eceldas
                disp(separate(1));
                [x] = size(separate);
            else
                cd /home/cloud/Documents/temp_tfg/workload/plots
                return;
            end;
            if (strcmp(separate(1),';') ~= 1)
                for j = 1:x(2)
                aux_line(1,j) = str2double(separate(j));
                
                end
                ite(1, counter) = aux_line(2);               
                ite(2, counter) = aux_line(4);
                ite(3, counter) = aux_line(5);
                ite(4, counter) = aux_line(6);
                ite(5, counter) = aux_line(3);
                counter = counter + 1;
            elseif (strcmp(separate(1),' ') == 1)
                i = 1;
            else
                disp(prima);
                prima = prima + 1;
            end
    end

    cd /home/cloud/Documents/temp_tfg/workload/plots
