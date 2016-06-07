%[week, avg_week] = week_model();

hours = 1:24;
days = 1:7;
ite_week = 1;

%Plot week per hours


    
figure(1);
plot(days, avg_week);
title('Average weekly pricing');
xlabel('Week days');
set(gca, 'XTickLabel',{'Sun','Mon','Tue','Wed','Thu','Fri','Sat'});
ylabel('€MW/h');

figure(2);
plot(hours, week);
legend('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thusday', 'Friday', 'Saturday');
title('Daily hourly pricing');
ylabel('€MW/h');
% while ite_week < 8
%     figure
%     plot(hours, week(ite_week, :));
%     xlabel('Hours');
%     ylabel('MW/h');
%     xlim([1 24]);
%     grid on;
%     switch ite_week
%         case 1
%             title('Sunday');
%         case 2
%             title('Monday');
%         case 3
%             title('Tuesday');
%         case 4
%             title('Wednesday');
%         case 5
%            title('Thursday');
%         case 6
%             title('Fryday');
%         case 7
%             title('Saturday');
%     end
%     ite_week = ite_week +1;
% end