load('uk_dialy_per_hours.mat');
load('sp_dialy_per_hours.mat');

uk_average_days = zeros(7,1);
sp_average_days = zeros(7,1);

for i = 1:7
   for j = 1 : 24
       sp_average_days(i) = sp_average_days(i) + y(i,j);
       uk_average_days(i) = uk_average_days(i) + x(i,j);
   end;
   sp_average_days(i) = sp_average_days(i)/24;
   uk_average_days(i) = uk_average_days(i)/24;
end;

grafica = figure(1);
plot(sp_average_days);
hold on;
plot(uk_average_days);
legend('Spain pricing' , 'United Kingdom pricing');
ylabel('€ MW/h');
set(gca, 'XTickLabel',{'Sun','Mon','Tue','Wed','Thu','Fri','Sat'});
hold off;

uk_average_days = zeros(1,24);
sp_average_days = zeros(1,24);

for i = 1:24
   for j = 1 : 7
       sp_average_days(i) = sp_average_days(i) + y(j,i);
       uk_average_days(i) = uk_average_days(i) + x(j,i);
   end;
   sp_average_days(i) = sp_average_days(i)/7;
   uk_average_days(i) = uk_average_days(i)/7;
end;

xax = 0:23;
grafica = figure(2);
plot(xax, sp_average_days);
hold on;
plot(xax, uk_average_days);
ylabel('€ MW/h');
legend('Spain pricing' , 'United Kingdom pricing');
hold off;