function [prices3d] = average( yy2013, yy2014, yy2015 )
    prices3d = zeros(365,24,3);
    hourAvg = zeros(1, 24);
    week_Avg = zeros(1, 7);
    for i = 1 : 3
        switch i
            case 1
                disp('Enter case 2013');
                long = size(yy2013);
                long = double(long(2));
                for j = 1 : long
                    tempEpoch = str2double(yy2013(j).millisUTC);
                    date = unix2matlab(tempEpoch);
                    date = datetime(date);
                   %Extract each case to put into the arrays
                    monthDay = day(date,'dayofmonth');
                    yearDay = day(date,'dayofyear');
                    weekDay = day(date,'dayofweek');
                    monthNbr = month(date);
                    [h,m,s] = hms(date);
                    %disp(h);
                    if ((m == 0) && (s == 0))
                        disp('hour');
                        prices3d(yearDay, h+1, i) = str2double(yy2013(j).price);
                    end
                    
                end;
            case 2
                disp('Enter case 2014');
                long = size(yy2014);
                long = double(long(2));
                for j = 1 : long
                    tempEpoch = str2double(yy2014(j).millisUTC);
                    date = unix2matlab(tempEpoch);
                    date = datetime(date);
                   %Extract each case to put into the arrays
                    monthDay = day(date,'dayofmonth');
                    yearDay = day(date,'dayofyear');
                    weekDay = day(date,'dayofweek');
                    monthNbr = month(date);
                    [h,m,s] = hms(date);
                    
                    if ((m == 0) && (s == 0))
                        disp('hour');
                        prices3d(yearDay, h+1, i) = str2double(yy2014(j).price);
                    end
                    
                end;
             case 3
                disp('Enter case 2015'); 
                long = size(yy2015);
                long = double(long(2));
                for j = 1 : long
                    tempEpoch = str2double(yy2015(j).millisUTC);
                    date = unix2matlab(tempEpoch);
                    date = datetime(date);
                   %Extract each case to put into the arrays
                    monthDay = day(date,'dayofmonth');
                    yearDay = day(date,'dayofyear');
                    weekDay = day(date,'dayofweek');
                    monthNbr = month(date);
                    [h,m,s] = hms(date);
                    
                    if ((m == 0) && (s == 0))
                        disp('hour');
                        prices3d(yearDay, h+1, i) = str2double(yy2015(j).price);
                    end
                    
                end;
        end;
    end;
    


end

