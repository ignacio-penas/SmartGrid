function [weekly_day ] = uk_boxPlot_full( yy2013, yy2014, yy2015 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

number_of_prices = zeros(7,1);
prices_acum = zeros(7,1);
day = zeros(7,1);

long = size(yy2013);
long = double(long(2));
long2 = size(yy2014);
long2 = double(long2(2));
long3 = size(yy2015);
long3 = double(long3(2));
lenght = long +long2 + long3;
weekly_day = zeros(7, lenght);
disp(lenght);
counter = 1;

i = 1;
disp('2013');
while i <= long
    tempEpoch = str2double(yy2013(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    weekDay = weekday(date);
    
    weekly_day(weekDay,counter) = str2double(yy2013(i).price);
    counter = counter + 1;
    i = i+1;
end


i = 1;
disp('2014');
while i <= long2
    tempEpoch = str2double(yy2014(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    weekDay = weekday(date);
    
    weekly_day(weekDay,counter) = str2double(yy2014(i).price);
    counter = counter + 1;
    i = i+1;
end


i = 1;
disp('2015');
while i <= long3
    tempEpoch = str2double(yy2015(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    weekDay = weekday(date);
    
    weekly_day(weekDay,counter) = str2double(yy2015(i).price);
    counter = counter + 1;
    i = i+1;
end
disp(counter);

