%[average_day, count_day] = uk_average_day ( yy2013, yy2014, yy2015 );
load('count_day.mat');
load('average_day.mat');

x = average_day./count_day;
x = x.';
x = 10.*x;
figure(1);
plot(x);
title('Hourly average of the las 3 years');
ylabel('£ MW/h');
xlabel('Hours of the day');