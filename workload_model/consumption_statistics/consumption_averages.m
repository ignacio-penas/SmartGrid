function [pTotal, priceTotal] = consumption_averages(country)

pTotal = 0;
priceTotal = 0;
posibilities = {'sp','spain','1';
                'uk','united kingdom','2';
                'us','united states', '3';
                'cmp','compare','4'};
choose_country = strcmp(country, posibilities);

sw = 0;
for i = 1:4
    for j = 1:3
        if choose_country(i,j) == 1
            sw = i;
        end;
    end;
end;

cd ~/tfg/SmartGrid/workload_model/plots
load('diaOptimized.mat'); 
cd ~/tfg/SmartGrid/workload_model/consumption_statistics
[x, logs_number] = size(diaOptimized);
switch sw
    case 1
        disp('spain');
        cd ~/tfg/SmartGrid/energy_pricing/comparing
        load('sp_average_day.mat');
        cd ~/tfg/SmartGrid/workload_model/consumption_statistics
        for i = 1:logs_number
            [ pot_partial, price_partial] = calculate_log( diaOptimized(3, i), diaOptimized(2, i),(diaOptimized(1, i)+diaOptimized(5, i)), sp_average_days);
            pTotal = pTotal + pot_partial;
            priceTotal = priceTotal + price_partial;
            disp(i);
        end;
        
    case 2
        disp('uk');
    case 3
        disp('us');
    case 4
        disp('compare');
    otherwise
        disp('bad parameter');
end