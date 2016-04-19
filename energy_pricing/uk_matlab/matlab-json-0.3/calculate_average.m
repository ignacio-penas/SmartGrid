function [ temp ] = calculate_average( uk_months_pricing, aux_uk_months_pricing )
temp = zeros(7,6,12);
for i = 1 :7
    for j = 1 : 6
        for k = 1 : 12
            if aux_uk_months_pricing(i,j,k) ~= 0
                temp(i,j,k) = uk_months_pricing(i,j,k)/aux_uk_months_pricing(i,j,k);
            end;
        end
    end
end


end

