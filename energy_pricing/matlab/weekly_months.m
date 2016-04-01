months = average_per_weeks_in_months();

for i = 1 : 12
    figure
    plot(months(:, :, i));
    legend('Week 1');
end

