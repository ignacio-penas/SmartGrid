for i = 1 : 12
    figure
    plot(temp(:, :, i));
    legend('Week 1', 'Week 2', 'Week 3', 'Week 4', 'Week 5', 'Week 6');
    axis([1 7 -5 20])
end
