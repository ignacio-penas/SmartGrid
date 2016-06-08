
x = weekly_day;

length = size(x);
length = double(length(2));


counter = 1;

for j = 1 : 7
    for i = 1 : length
        if x(j,i) ~= 0
            y(j,counter) = x(j,i);
            counter = counter + 1;
            disp(counter);
        end
    end
    counter = 1;
    disp(j);
end;
z = 10.*y;

figura = figure(1);
boxplot(y);
title('Average daily prices');
set(gca, 'XTickLabel',{'Sun','Mon','Tue','Wed','Thu','Fri','Sat'});
ylabel('£ MW/h');
hold off;