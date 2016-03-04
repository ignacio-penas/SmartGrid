%[week, avg_week] = week_model();

hours = 1:24;
days = 1:7;
%days_S = [Sunday, Monday, Tuesday, Wednesday, Thursday, Fryday, Saturday];
ite_week = 1;

%Plot week per hours


    
figure
plot(days, avg_week);
title('Averge weekly pricing');

while ite_week < 8
    switch ite_week
        case 1
            figure
            plot(hours, week(ite_week, :));
            title('Sunday');
        case 2
            figure
            plot(hours, week(ite_week, :));
            title('Monday');
        case 3
            figure
            plot(hours, week(ite_week, :));
            title('Tuesday');
        case 4
            figure
            plot(hours, week(ite_week, :));
            title('Wednesday');
        case 5
            figure
            plot(hours, week(ite_week, :));
            title('Thursday');
        case 6
            figure
            plot(hours, week(ite_week, :));
            title('Fryday');
        case 7
            figure
            plot(hours, week(ite_week, :));
            title('Saturday');
    end
    ite_week = ite_week +1;
end