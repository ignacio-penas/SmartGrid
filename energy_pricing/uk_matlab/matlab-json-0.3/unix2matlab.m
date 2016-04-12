function [ day ] = unix2matlab( x )

    time_unix = x; % example time
    time_reference = datenum('1970', 'yyyy');
    time_matlab = time_reference + time_unix / 8.64e7;
    day = datestr(time_matlab);

end

