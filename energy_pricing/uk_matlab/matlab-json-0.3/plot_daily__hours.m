%[daily_per_hours ] = week_daily_per_hours( yy2013, yy2014, yy2015 );
xax = 0:23;
temp = daily_per_hours.*10;
for i = 1 : 7
   
    grafica = figure(1);
    plot(xax, temp(i,:));
    title('Daily per hours');
    legend('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thusday', 'Friday', 'Saturday');
    ylabel('£ MW/h');
    xlabel('Hours of the day');
    xlim([0 23]);
    hold on; 
end

hold off;