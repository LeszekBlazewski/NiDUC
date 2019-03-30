rng('shuffle');
data = generateData(100,800);
probError = 0.05;
canalName ='BSC';
codingProtocol = 'pB';

[operationCounter, decodedData] = ArqStopAndWait(data,probError,canalName,codingProtocol);

[m,n] = size(decodedData);

errorCounter = 0;

r = rand(100,800);

for i=1:m
    for j=1:n
        correctDataCell = data(i,j);
        decodedDataCell = decodedData(i,j);
        if correctDataCell ~= decodedDataCell
            errorCounter = errorCounter +1;
        end
    end
end

errorRate = errorCounter/(m*n);
