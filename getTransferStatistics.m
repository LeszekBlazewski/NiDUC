function [errorRate,transmissionLengthRate] = getTransferStatistics(decodedData,data,operationCounter,transferRate)

[m,n] = size(decodedData);

errorCounter = 0;

for i=1:m
    for j=1:n
        correctDataCell = data(i,j);
        decodedDataCell = decodedData(i,j);
        if correctDataCell ~= decodedDataCell
            errorCounter = errorCounter +1;
        end
    end
end

errorRate = double(errorCounter) / double(transferRate); % not sure if here should be m*n or transferRate from GUI ? DEX HALP PLEASE ! 
transmissionLengthRate = double(operationCounter) / double(m);

end