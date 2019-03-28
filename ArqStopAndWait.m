% ------------STOP AND WAIT-----------

function [operationCounter, decodedData] = ArqStopAndWait(data,probabilityOfError,canalName,codingProtocol)

operationCounter = 0;

[m,n] = size(data);

decodedData = zeros(m,n);

for i=1:m
    
    % encode data
    
    switch codingProtocol
        case '2f5'
            encodedData = twoFromFiveCoding(data(i,:));
        case 'crc'
            encodedData = crc16Coding(data(i,:));
        case 'pB'
            encodedData = parityBitCoding(data(i,:));     
    end
    
    % send through channel
    
    switch canalName
        case 'BSC'
            dataAfterTransmission = channelBSC(encodedData,probabilityOfError);
            
        %case 'REC'
            %%%%% ERROR CHANEL WITH PEAK TO IMPLEMENT
            
    end       
    
    % decode the data
    
    switch codingProtocol
        case '2f5'
            [decodedpacket,error] = twoFromFiveDecoding(dataAfterTransmission);
        case 'crc'
            [decodedpacket,error] = crc16Decoding(dataAfterTransmission);
            error = ~error;
        case 'pB'
            [decodedpacket,error] = parityBitDecoding(dataAfterTransmission);     
    end
     
    decodedData(i,:) = decodedpacket;
    
    % check if error occured
    if error
        i=i-1;
    end
    
    operationCounter = operationCounter + 1;
end


end
               