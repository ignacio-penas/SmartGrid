%months = average_per_weeks_in_months();

for i = 1 : 12
    figure
    plot(months(:, :, i));
    legend('Week 1', 'Week 2', 'Week 3', 'Week 4', 'Week 5', 'Week 6');
end

