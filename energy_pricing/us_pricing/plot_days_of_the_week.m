%days_of_the_week_average;


%%Plotting with box plot function
figure(1);
boxplot(plotting_var);
set(gca, 'XTickLabel',{'Sun','Mon','Tue','Wed','Thu','Fri','Sat'});
ylabel('$ MW/h');

hold off;

temp = zeros(1,7);
[x,y] = size(plotting_var);
for i = 1:7
    for j = 1:x
        temp(1,i) = temp(1,i) + plotting_var(j,i);
    end;
end;
temp2 = counter_days_pricing.';
temp = temp./temp2;



figure(2);
plot(temp);
set(gca, 'XTickLabel',{'Sun','Mon','Tue','Wed','Thu','Fri','Sat'});
ylabel('$ MW/h');

hold off;