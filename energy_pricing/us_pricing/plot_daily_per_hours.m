daily_per_hours;

temp = average_week_days./counter_average_week_days;
hours = 0:23;
for i = 1:7
    figure(1);
    plot(hours, temp(:,i));
    
    legend('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thusday', 'Friday', 'Saturday');
    hold on;
end;

hold off;
