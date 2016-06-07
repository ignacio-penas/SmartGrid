[days] = days_extractor();

figure(1);
weekdays= ['Sunday','Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
boxplot(days);
set(gca, 'XTickLabel',{'Sun','Mon','Tue','Wed','Thu','Fri','Sat'});
title('Average daily prices');
ylabel('€MW/h');