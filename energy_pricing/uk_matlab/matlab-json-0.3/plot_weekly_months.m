
headers = {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'};
temp2 = zeros(7,5,12);
for i = 1 : 7
   for j = 1 : 5
      for k = 1 : 12
        temp2(i,j,k) = temp(i,j,k);
      end
   end 
end

for i = 1 : 12
    figura = figure (i);
    plot(temp2(:, :, i));
    title(headers(i));
    legend('Week 1', 'Week 2', 'Week 3', 'Week 4', 'Week 5');
    set(gca, 'XTickLabel',{'Sun','Mon','Tue','Wed','Thu','Fri','Sat'});
    ylabel('£ MW/h');
    x = [int2str(i) '.jpg'];
    saveas(figura, x);
end
