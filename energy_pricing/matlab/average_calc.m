today = datetime;
aux_day = datenum(today);
acc_dia = 0;
months = [];
week = [];
%jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec = 0;
%mon, tue, wed, thu, fry, sat, sun = 0;
for i = 2:771
    day_before = addtodate(aux_day, -i, 'day');
    day_before = datestr(day_before);
    day_before = datetime(day_before);
    temp_month = month(day_before);
    day_before = yyyymmdd(day_before);
    file_name = ['marginalpdbc_', num2str(day_before), '.1'];
    disp(file_name);
    dia = data_extractor(file_name);
    
    
end