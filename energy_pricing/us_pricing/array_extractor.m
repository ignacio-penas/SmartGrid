begin_date = datetime('01-Jan-2013 00:00:00');
current_year = year(begin_date);
current_month = month(begin_date);
year2013 = zeros(12,31,24);
year2014 = zeros(12,31,24);
year2015 = zeros(12,31,24);
year2016 = zeros(4,31,24);

%%Year 2014
for i = 1:12
   begin_format = yyyymmdd(begin_date);
   last_format = begin_format + (eomday(current_year, current_month)-1);
   file_name = [num2str(begin_format), '-', num2str(last_format), ' CAISO Day-Ahead Price.csv'];
   disp(file_name);
   temp = data_extractor(file_name);
   [y,x] = size(temp);
   for j = 1:y
       for k = 1:x
           year2013(i,j,k) = temp(j,k);
       end;
   end;
   
   numeric_date = datenum(begin_date);
   numeric_date = addtodate(numeric_date, 1 , 'month');
   begin_date = datestr(numeric_date);
   begin_date = datetime(begin_date);
   current_month = month(begin_date); 
end;


begin_date = datetime('01-Jan-2014 00:00:00');
current_year = year(begin_date);
current_month = month(begin_date);
year2014 = zeros(12,31,24);
year2015 = zeros(12,31,24);
year2016 = zeros(4,31,24);

%%Year 2014
for i = 1:12
   begin_format = yyyymmdd(begin_date);
   last_format = begin_format + (eomday(current_year, current_month)-1);
   file_name = [num2str(begin_format), '-', num2str(last_format), ' CAISO Day-Ahead Price.csv'];
   disp(file_name);
   temp = data_extractor(file_name);
   [y,x] = size(temp);
   for j = 1:y
       for k = 1:x
           year2014(i,j,k) = temp(j,k);
       end;
   end;
   
   numeric_date = datenum(begin_date);
   numeric_date = addtodate(numeric_date, 1 , 'month');
   begin_date = datestr(numeric_date);
   begin_date = datetime(begin_date);
   current_month = month(begin_date); 
end;


begin_date = datetime('01-Jan-2015 00:00:00');
current_year = year(begin_date);
current_month = month(begin_date);
%%Year 2015
for i = 1:12
    begin_format = yyyymmdd(begin_date);
   last_format = begin_format + (eomday(current_year, current_month)-1);
   file_name = [num2str(begin_format), '-', num2str(last_format), ' CAISO Day-Ahead Price.csv'];
    disp(file_name);
   temp = data_extractor(file_name);
   [y,x] = size(temp);
   for j = 1:y
       for k = 1:x
           year2015(i,j,k) = temp(j,k);
       end;
   end;
   
   numeric_date = datenum(begin_date);
   numeric_date = addtodate(numeric_date, 1 , 'month');
   begin_date = datestr(numeric_date);
   begin_date = datetime(begin_date);
   current_month = month(begin_date); 
end


begin_date = datetime('01-Jan-2016 00:00:00');
current_year = year(begin_date);
current_month = month(begin_date);
%%Year 2016
for i = 1:4
    begin_format = yyyymmdd(begin_date);
   last_format = begin_format + (eomday(current_year, current_month)-1);
   file_name = [num2str(begin_format), '-', num2str(last_format), ' CAISO Day-Ahead Price.csv'];
    disp(file_name);
   temp = data_extractor(file_name);
   [y,x] = size(temp);
   for j = 1:y
       for k = 1:x
           year2016(i,j,k) = temp(j,k);
       end;
   end;
   
   numeric_date = datenum(begin_date);
   numeric_date = addtodate(numeric_date, 1 , 'month');
   begin_date = datestr(numeric_date);
   begin_date = datetime(begin_date);
   current_month = month(begin_date); 
end



