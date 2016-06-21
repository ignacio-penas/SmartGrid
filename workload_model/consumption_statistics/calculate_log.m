function [ pot_partial, price_function] = calculate_log( nCpusUsed, elapsedTime, runTime,average_days )
%calculate_log 
%   This function returns the average consuption of the log passed on the
%   parameters. The last parameter to be passed is a 1x24 array containing
%   the average pricing per hours of the case to be calculated

pot_cte = 153.4;
mem_cte = 0.56;
cpu_cte = 0.85;
n_cpu_base = 12;
mem_usage = 50;
price_function = 0;
unixTime = 1296571124;

pot_partial = 0;
price_function = 0;

mem_consumption = mem_cte*mem_usage;
cpu_consumption = cpu_cte*nCpusUsed*100/n_cpu_base;

time = unix2matlab((runTime + unixTime)*1000);
h = hour(time);



aux_pot = 0;

elapsedTime = elapsedTime/3600;
module = floor(elapsedTime);
%Constante con la que calculamos la potencia consumida en la ultima
%fraccion
rest = mod(elapsedTime, module);
upper_int = ceil(elapsedTime);

aux_pot = (pot_cte + mem_consumption + cpu_consumption);
for j = 1:upper_int
    if j == upper_int
        aux_pot = aux_pot*rest;
        pot_partial = pot_partial + aux_pot;
        price_function = price_function + aux_pot*(average_days(1,(mod(((h+j)-1),24)+1))/1000000);
    else
        
        pot_partial = pot_partial + aux_pot;
        price_function = price_function + aux_pot*(average_days(1,(mod(((h+j)-1),24)+1))/1000000);
    end;
end;

end


