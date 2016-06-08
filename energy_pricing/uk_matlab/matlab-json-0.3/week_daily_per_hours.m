function [daily_per_hours ] = week_daily_per_hours( yy2013, yy2014, yy2015 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

daily_per_hours = zeros(7,24);
prices_acum = zeros(7,24);

long = size(yy2013);
long = double(long(2));
long2 = size(yy2014);
long2 = double(long2(2));
long3 = size(yy2015);
long3 = double(long3(2));

i = 1;
disp('2013');
while i <= long
    tempEpoch = str2double(yy2013(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    weekDay = weekday(date);
    h = hour(date);
    
    daily_per_hours(weekDay,h+1) = daily_per_hours(weekDay,h+1) + str2double(yy2013(i).price);
    prices_acum(weekDay,h+1) = prices_acum(weekDay,h+1) + 1;
    i = i+1;
end


i = 1;
disp('2014');
while i <= long2
    tempEpoch = str2double(yy2014(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    weekDay = weekday(date);
    h = hour(date);
    
    daily_per_hours(weekDay,h+1) = daily_per_hours(weekDay,h+1) + str2double(yy2014(i).price);
    prices_acum(weekDay,h+1) = prices_acum(weekDay,h+1) + 1;
    i = i+1;
end


i = 1;
disp('2015');
while i <= long3
    tempEpoch = str2double(yy2015(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    weekDay = weekday(date);
    h = hour(date);
    
    daily_per_hours(weekDay,h+1) = daily_per_hours(weekDay,h+1) + str2double(yy2015(i).price);
    prices_acum(weekDay,h+1) = prices_acum(weekDay,h+1) + 1;
    i = i+1;
end

daily_per_hours = daily_per_hours./prices_acum;

