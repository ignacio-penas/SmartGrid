temp = zeros(24,1);
accum = 0;
for i = 1:24
    accum = accum + daily_workload(i);
    disp(daily_workload(i));
end
accum2 = accum/24;
disp(accum);
temp = daily_workload;
temp = temp./accum2;

figure(1);
hours = 0:23;
plot(hours,temp);
title('Average processors por hours');
ylabel('Normalized processors');
xlabel('Hours of the day');

