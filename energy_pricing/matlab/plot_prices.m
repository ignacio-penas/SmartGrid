%calc = average_calc();
%calc = months;
hours = 0:23;
months = {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'};
iterate_month = 1;
%%
%Trace 3d plot
while iterate_month < 13
    
    figure(iterate_month)
    subplot(2, 1, 1);
    plot(hours, calc(iterate_month,:));
    title(months(iterate_month));
    xlim([0 23]);
    ylim([30 90]);
    ylabel('€ MW/h');
    
    subplot(2, 1, 2);
    plot(hours, calc(iterate_month + 1,:));
    title(months(iterate_month+1));
    xlim([0 23]);
    ylim([30 90]);
    ylabel('€ MW/h');
    
    iterate_month = iterate_month + 2;
end

figure
plot(hours, calc);
legend('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
xlabel('Hours of the day');
ylabel('€ MW/h');
xlim([0 23]);