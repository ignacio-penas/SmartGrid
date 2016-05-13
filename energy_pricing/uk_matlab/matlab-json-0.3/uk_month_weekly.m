function [ months, months_counter, months_accum ] = uk_month_weekly( yy2013, yy2014, yy2015 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
months_counter = zeros(12, 24);
months_accum = zeros(12, 24);
months = zeros(12, 24);

long = size(yy2013);
long = double(long(2));
i = 1;
while i <= long
    disp('2013');
    disp(i);
    tempEpoch = str2double(yy2013(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    
    monthNbr = month(date);
    h = hour(date) +1;
    months_accum(monthNbr, h) = months_accum(monthNbr, h) + str2double(yy2013(i).price);
    months_counter(monthNbr, h) = months_counter(monthNbr, h) + 1;
    i = i + 1;
end

long = size(yy2014);
long = double(long(2));
i = 1;
while i <= long
    disp('2014');
    disp(i);
    tempEpoch = str2double(yy2014(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    
    monthNbr = month(date);
    h = hour(date) +1;
    months_accum(monthNbr, h) = months_accum(monthNbr, h) + str2double(yy2014(i).price);
    months_counter(monthNbr, h) = months_counter(monthNbr, h) + 1;
    i = i + 1;
end

long = size(yy2015);
long = double(long(2));
i = 1;
while i <= long
    disp('2015');
    disp(i);
    tempEpoch = str2double(yy2015(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    
    monthNbr = month(date);
    h = hour(date) +1;
    months_accum(monthNbr, h) = months_accum(monthNbr, h) + str2double(yy2015(i).price);
    months_counter(monthNbr, h) = months_counter(monthNbr, h) + 1;
    i = i + 1;
end

months = months_accum ./ months_counter;

