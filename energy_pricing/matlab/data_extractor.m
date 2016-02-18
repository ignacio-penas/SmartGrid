
cd /home/nacho/tfg/data_warehouse/energy_pricing/www.omie.es/datosPub/marginalpdbc

fdat=fopen('marginalpdbc_20140109.1', 'r');
dia =  [];zeros(25,25);

for i = 1:25
    if i ~= 1
        nline=fgetl(fdat); %resto de lineas
        separate = strsplit(nline, ';');
        separate = cell2mat(separate);
        [y,x] = size(separate);
        
        for j = 1:x
          separate(j) = str2double(separate(j));
          dia(i,j) = separate(j);
        end
        
        %dia(i,n_lenght)=nline
    else
        nline=fgetl(fdat); %primera linea
    end
    
end

cd /home/nacho/tfg/SmartGrid/energy_pricing/matlab
