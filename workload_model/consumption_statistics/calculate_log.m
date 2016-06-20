function [ pot_partial, price_partial] = calculate_log( nCpusUsed, elapsedTime, runTime,sp_average_days )
%calculate_log 
%   This function returns the average consuption of the log passed on the
%   parameters

pot_cte = 153.4;
mem_cte = 0.56;
cpu_cte = 0.85;
n_cpu_base = 12;
mem_usage = 50;
price_partial = 0;
unixTime = 1296571124;

pot_partial = 0;
price_partial = 0;

mem_consumption = mem_cte*mem_usage;
cpu_consumption = cpu_cte*nCpusUsed*100/n_cpu_base;

time = unix2matlab(runTime + unixTime)*1000;
h = hour(time);

aux_pot = 0;

elapsedTime = elapsedTime/3600;
module = floor(elapsedTime);
%Constante con la que calculamos la potencia consumida en la ultima
%fraccion
rest = mod(elapsedTime, module);
upper_int = ceil(elapsedTime);

for j = 1:upper_int
    if j == upper_int
        aux_pot = (pot_cte + mem_consumption + cpu_consumption)*rest;
        pot_partial = pot_partial + aux_pot;
        price_partial = price_partial + aux_pot*(sp_average_days(1,(mod((j-1),24)+1))/1000000);
    else
        aux_pot = (pot_cte + mem_consumption + cpu_consumption);
        pot_partial = pot_partial + aux_pot;
        price_partial = price_partial + aux_pot*(sp_average_days(1,(mod((j-1),24)+1))/1000000);
    end;
end;


