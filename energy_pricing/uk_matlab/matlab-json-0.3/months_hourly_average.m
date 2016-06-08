%[ months, months_counter, months_accum ] = uk_month_weekly( yy2013, yy2014, yy2015 );

for i = 1:12
   
    figura = figure(1);
    plot(months(i,:));
    hold on;
end

hold off;