function [n_procs_average, temp_n_procs] = data_extractor(dia)
n_procs_average = zeros(1,24);
temp_n_procs = zeros(1,24);
unixTime = 1296571124;
time = 0;

for i = 1:500000
    time = unix2matlab( (dia(1, i) + unixTime))*1000;
    hour = hour(time);
    
end