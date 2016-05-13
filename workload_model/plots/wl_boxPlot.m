function [ wl_day, number_of_procs, procs_acumm ] = wl_boxPlot( diaOptimized )
%%Function resposible for extracting and averaging the data in 
%%days of the week
	number_of_procs = zeros(7,1);
	procs_acumm = zeros(7,1);
	wl_day = zeros(7,1);
	unixTime = 1296571124;
	[x,y] = size(diaOptimized);

	for i = 1:y
		disp(i);
		time = unix2matlab( (diaOptimized(1, i) + unixTime)*1000);
		time = datetime(time);
		weekDay = weekday(time);

		procs_acumm(weekDay) = procs_acumm(weekDay) + 1;
		number_of_procs(weekDay) = number_of_procs(weekDay) + diaOptimized(3,i);
	end

	wl_day = number_of_procs ./ procs_acumm; 