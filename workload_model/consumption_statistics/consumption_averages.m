function [pTotal, priceTotal, price_comparation, pot_comparation] = consumption_averages(country)
%consumption_averages this function selects the country in which we
%calculate the energy consumption and money spent throw the CEA Curie
%workload logs given be parallel workload webpage.
pTotal = 0;
priceTotal = 0;
price_comparation = zeros(1,4);
disp(price_comparation);
pot_comparation = zeros(1,4);

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
price_partial = 0;

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
            %disp(i);
        end;
        
    case 2
        disp('uk');
        cd ~/tfg/SmartGrid/energy_pricing/comparing
        load('uk_average_day.mat');
        cd ~/tfg/SmartGrid/workload_model/consumption_statistics
        for i = 1:logs_number
            [ pot_partial, price_partial] = calculate_log( diaOptimized(3, i), diaOptimized(2, i),(diaOptimized(1, i)+diaOptimized(5, i)), uk_average_days);
            pTotal = pTotal + pot_partial;
            priceTotal = priceTotal + price_partial;
            disp(i);
        end;
    case 3
        disp('us');
        cd ~/tfg/SmartGrid/energy_pricing/comparing
        load('us_average_day.mat');
        cd ~/tfg/SmartGrid/workload_model/consumption_statistics
        for i = 1:logs_number
            [ pot_partial, price_partial] = calculate_log( diaOptimized(3, i), diaOptimized(2, i),(diaOptimized(1, i)+diaOptimized(5, i)), us_average_days);
            pTotal = pTotal + pot_partial;
            priceTotal = priceTotal + price_partial;
            disp(i);
        end;
    case 4
        disp('compare');
        cd ~/tfg/SmartGrid/energy_pricing/comparing
        load('sp_average_day.mat');
        load('uk_average_day.mat');
        load('us_average_day.mat');
        cd ~/tfg/SmartGrid/workload_model/consumption_statistics
        for i = 1:logs_number
            %%Spain
%             [ pot_partial, price_partial] = calculate_log( diaOptimized(3, i), diaOptimized(2, i),(diaOptimized(1, i)+diaOptimized(5, i)), sp_average_days);
%             pot_comparation(1,1) = pot_comparation(1,1) + pot_partial;
%             price_comparation(1,1) = price_comparation(1,1) + price_partial;
%             %%UK
%             [ pot_partial, price_partial] = calculate_log( diaOptimized(3, i), diaOptimized(2, i),(diaOptimized(1, i)+diaOptimized(5, i)), uk_average_days);
%             pot_comparation(1,2) = pot_comparation(1,2) + pot_partial;
%             price_comparation(1,2) = price_comparation(1,2) + price_partial;
%             %%US
%             [ pot_partial, price_partial] = calculate_log( diaOptimized(3, i), diaOptimized(2, i),(diaOptimized(1, i)+diaOptimized(5, i)), us_average_days);
%             pot_comparation(1,3) = pot_comparation(1,3) + pot_partial;
%             price_comparation(1,3) = price_comparation(1,3) + price_partial;
%             
            %%Balance
            [ pot_partial, price_partial] = balance_logs( diaOptimized(3, i), diaOptimized(2, i),(diaOptimized(1, i)+diaOptimized(5, i)),sp_average_days, uk_average_days, us_average_days);
            pot_comparation(1,4) = pot_comparation(1,4) + pot_partial;
            price_comparation(1,4) = price_comparation(1,4) + price_partial;
            disp(i);
        end;
    otherwise
        disp('bad parameter');
end