function [pricing] = uk_data_extractor()
    cd /home/nacho/tfg/data_warehouse/uk_energy/hourlypricing.comed.com
    
        fname = '2011.json';
        x = json.read(fname);

    cd /home/nacho/tfg/SmartGrid/energy_pricing/uk_matlab
end

