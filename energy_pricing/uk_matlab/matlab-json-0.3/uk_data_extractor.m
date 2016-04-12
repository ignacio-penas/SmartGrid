function [yy2013, yy2014, yy2015] = uk_data_extractor() 
    for i = 3 : 5
        switch i
%             case 1
%                 disp('case 1');
%                 fname = '/home/nacho/tfg/data_warehouse/uk_energy/hourlypricing.comed.com/2011.json';
%                 yy2011 = json.read(fname);
%                 disp('case 1 end');
%             case 2
%                 disp('case 2');
%                 fname = '/home/nacho/tfg/data_warehouse/uk_energy/hourlypricing.comed.com/2012.json';
%                 yy2012 = json.read(fname);
%                 disp('case 2 end');
            case 3
                disp('case 2013');
                fname = '/home/nacho/tfg/data_warehouse/uk_energy/hourlypricing.comed.com/2013.json';
                yy2013 = json.read(fname);
                disp('case 2013 end');
            case 4
                disp('case 2014');
                fname = '/home/nacho/tfg/data_warehouse/uk_energy/hourlypricing.comed.com/2014.json';
                yy2014 = json.read(fname);
                disp('case 2014 end');
            case 5
                disp('case 2015');
                fname = '/home/nacho/tfg/data_warehouse/uk_energy/hourlypricing.comed.com/2015.json';
                yy2015 = json.read(fname);
                disp('case 5 end');
               
        end;   
    end;

end

