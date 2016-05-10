calc = average_calc();
hours = 1:24;
months = 1:12;
iterate_month = 1;
%%
%Trace 3d plot

while iterate_month < 13
    
    figure
    subplot(2, 1, 1);
    plot(hours, calc(iterate_month,:));

    subplot(2, 1, 2);
    plot(hours, calc(iterate_month + 1,:));
    
    iterate_month = iterate_month + 2;
end

figure
plot(hours, calc);