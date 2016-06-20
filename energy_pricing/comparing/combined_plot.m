load('uk_daily_per_hours.mat');
load('sp_daily_per_hours.mat');
load('us_daily_per_hours.mat');
us_average_week_days = us_average_week_days.';

dolar_euro = 0.880715846;

uk_average_days = zeros(7,1);
us_average_days = zeros(7,1);
sp_average_days = zeros(7,1);

for i = 1:7
   for j = 1 : 24
       sp_average_days(i) = sp_average_days(i) + y(i,j);
       uk_average_days(i) = uk_average_days(i) + x(i,j);
       us_average_days(i) = us_average_days(i) + us_average_week_days(i,j)*dolar_euro;
   end;
   sp_average_days(i) = sp_average_days(i)/24;
   uk_average_days(i) = uk_average_days(i)/24;
   us_average_days(i) = us_average_days(i)/24;
end;

grafica = figure(1);
plot(sp_average_days);
hold on;
plot(uk_average_days);
hold on;
plot(us_average_days);
legend('Sp pricing' , 'UK pricing', 'US pricing');
ylabel('€ MW/h');
set(gca, 'XTickLabel',{'Sun','Mon','Tue','Wed','Thu','Fri','Sat'});
hold off;

uk_average_days = zeros(1,24);
sp_average_days = zeros(1,24);
us_average_days = zeros(1,24);
for i = 1:24
   for j = 1 : 7
       sp_average_days(i) = sp_average_days(i) + y(j,mod((i+1),24)+1);
       uk_average_days(i) = uk_average_days(i) + x(j,mod((i),24)+1);
       us_average_days(i) = us_average_days(i) + us_average_week_days(j,mod((i-6),24)+1)*dolar_euro;
   end;
   sp_average_days(i) = sp_average_days(i)/7;
   uk_average_days(i) = uk_average_days(i)/7;
   us_average_days(i) = us_average_days(i)/7;
end;

xax = 0:23;
grafica = figure(2);
plot(xax, sp_average_days);
hold on;
plot(xax, uk_average_days);
hold on;
plot(xax, us_average_days);
%set(gca, 'XTickLabel',{'00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23', '23'});
xlim([0 23]);
ylabel('€ MW/h');
xlabel('Hours of the day');
title('horario UTC');
legend('Sp pricing' , 'UK pricing', 'US pricing');
hold off;

uk_average_days = zeros(1,24);
sp_average_days = zeros(1,24);
us_average_days = zeros(1,24);
for i = 1:24
   for j = 1 : 7
       sp_average_days(i) = sp_average_days(i) + y(j,i);
       uk_average_days(i) = uk_average_days(i) + x(j,mod((i-2),24)+1);
       us_average_days(i) = us_average_days(i) + us_average_week_days(j,mod((i-8),24)+1)*dolar_euro;
   end;
   sp_average_days(i) = sp_average_days(i)/7;
   uk_average_days(i) = uk_average_days(i)/7;
   us_average_days(i) = us_average_days(i)/7;
end;

xax = 0:23;
grafica = figure(3);
plot(xax, sp_average_days);
hold on;
plot(xax, uk_average_days);
hold on;
plot(xax, us_average_days);
ylabel('$ MW/h');
title('horario España');
xlim([0 23]);
xlabel('Hours of the day');
legend('Sp pricing' , 'UK pricing', 'US pricing');
hold off;