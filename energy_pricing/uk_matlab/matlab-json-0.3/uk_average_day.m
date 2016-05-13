function [day, count_day] = uk_average_day ( yy2013, yy2014, yy2015 )

	day = zeros(1,24);
	count_day = zeros(1,24);
	currentDay = 0;
	long = size(yy2013);
	long = double(long(2));

	i = 1;
	while i <= long
		disp('1');
		disp(i);
		tempEpoch = str2double(yy2013(i).millisUTC);
	    currentDay = unix2matlab(tempEpoch);
	    currentDay = datetime(currentDay);
	    h = hour(currentDay);
        h = h +1;
	    %[h,m,s] = hms(currentDay);

	    day(1,h) = day(1,h) + str2double(yy2013(i).price);
	    count_day(1,h) = count_day(1,h) + 1;
	    
	    i = i + 1; 
	end

	i = 1;
	long = size(yy2014);
	long = double(long(2));
	while i <= long
		disp('1');
		disp(i);
		tempEpoch = str2double(yy2014(i).millisUTC);
	    currentDay = unix2matlab(tempEpoch);
	    currentDay = datetime(currentDay);
	    h = hour(currentDay);
        h = h +1;
	    %[h,m,s] = hms(currentDay);

	    day(1,h) = day(1,h) + str2double(yy2014(i).price);
	    count_day(1,h) = count_day(1,h) + 1;
	    
	    i = i + 1; 
	end

	i = 1;
	long = size(yy2015);
	long = double(long(2));
	while i <= long
		disp('1');
		disp(i);
		tempEpoch = str2double(yy2015(i).millisUTC);
	    currentDay = unix2matlab(tempEpoch);
	    currentDay = datetime(currentDay);
	    h = hour(currentDay);
        h = h +1;
	    %[h,m,s] = hms(currentDay);

	    day(1,h) = day(1,h) + str2double(yy2015(i).price);
	    count_day(1,h) = count_day(1,h) + 1;
	    
	    i = i + 1; 
	end