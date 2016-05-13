function [n_procs_average, temp_n_procs, average_n_procs] = n_procs_average(diaOptimized)
%In this function we average the number of procesors employed by
%the CEA curie date center within one year and a half. The stats are shown by hours

n_procs_average = zeros(1,24);
temp_n_procs = zeros(1,24);
average_n_procs = zeros(1,24);
unixTime = 1296571124;
time = 0;

% diaOptimized = zeros(1, 312826);
% 
% for i = 1:312826
%    if dia(1,i) ~= 0
%        disp('hola');
%        diaOptimized(1,i) = dia(1, i);
%        diaOptimized(2,i) = dia(2, i);
%        diaOptimized(3,i) = dia(3, i);
%        diaOptimized(4,i) = dia(4, i);
%        diaOptimized(5,i) = dia(5, i);
%    end
% end
[x,y] = size(diaOptimized);
for i = 1:y
    time = unix2matlab( (diaOptimized(1, i) + unixTime)*1000);
    currentHour = hour(time);
    n_procs_average(1,currentHour+1) = n_procs_average(1,currentHour+1) + diaOptimized(3,i);
    temp_n_procs(1,currentHour+1) = temp_n_procs(1,currentHour+1) + 1;  
end

for j = 1:24
    average_n_procs(1,j) = n_procs_average(1,j) / temp_n_procs(1,j)
end