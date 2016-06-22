function [ pot_partial, price_partial] = balance_logs( nCpusUsed, elapsedTime, runTime, sp_pricing, uk_pricing, us_pricing )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

pot_cte = 153.4;
mem_cte = 0.56;
cpu_cte = 0.85;
n_cpu_base = 12;
mem_usage = 50;

unixTime = 1296571124;

pot_partial = 0;
price_partial = 0;

mem_consumption = mem_cte*mem_usage;
cpu_consumption = cpu_cte*nCpusUsed*100/n_cpu_base;

aux_sp = 0;
aux_uk = 0;
aux_us = 0;

min_aux_sp = 1e6;
min_aux_uk = 1e6;
min_aux_us = 1e6;

time = unix2matlab((runTime + unixTime)*1000);
h = hour(time);
h_initial = h;
elapsedTime = elapsedTime/3600;
module = floor(elapsedTime);
%Constante con la que calculamos la potencia consumida en la ultima
%fraccion
rest = mod(elapsedTime, module);
upper_int = ceil(elapsedTime);

aux_pot = (pot_cte + mem_consumption + cpu_consumption);

for k = 0:23
    h = h + k;
    for j = 1:upper_int
        if j == upper_int
            aux_pot = aux_pot*rest;
            pot_partial = pot_partial + aux_pot;
            aux_sp = aux_sp + aux_pot*(sp_pricing(1,(mod(((h+j)-1),24)+1))/1000000);
            aux_uk = aux_uk + aux_pot*(uk_pricing(1,(mod(((h+j)-1),24)+1))/1000000);
            aux_us = aux_us + aux_pot*(us_pricing(1,(mod(((h+j)-1),24)+1))/1000000);
        else
            pot_partial = pot_partial + aux_pot;
            aux_sp = aux_sp + aux_pot*(sp_pricing(1,(mod(((h+j)-1),24)+1))/1000000);
            aux_uk = aux_uk + aux_pot*(uk_pricing(1,(mod(((h+j)-1),24)+1))/1000000);
            aux_us = aux_us + aux_pot*(us_pricing(1,(mod(((h+j)-1),24)+1))/1000000);
        end;
    end;
    
    if aux_sp < min_aux_sp
        min_aux_sp = aux_sp;
    end;
    
    if aux_uk < min_aux_uk
        min_aux_uk = aux_uk;
    end;
    
    if aux_us < min_aux_us
        min_aux_us = aux_us;
    end;
end;


if (aux_uk <= aux_sp)
    price_partial = min_aux_uk;
elseif (aux_sp < aux_uk)
    price_partial = min_aux_sp;
else
        disp('Algoritmo mal implementado');
end;
% if (aux_us <= aux_uk && aux_us <= aux_sp)
%     price_partial = aux_us;
% elseif (aux_sp <= aux_uk && aux_sp <= aux_us)
%     price_partial = aux_sp;
% elseif (aux_uk <= aux_sp && aux_uk <= aux_us)
%     price_partial = aux_sp;
% else
%         disp('Algoritmo mal implementado');
% end;
end

