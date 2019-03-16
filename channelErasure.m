%{
Simualtion of the channel in which erasure of bits is possible.
 parameters:
data - contains matrix which is not corrupted
probability - the probability of error occurence
dataAfterTransfer - contains matrix after the transsmision
retrurns:
data which is corrupted
information whether data still contains erased bits
 %}
function [corruptedData, info] = channelErasure(data, probability, dataAfterTransfer)
[m,n]=size(data);

for i=1:n
  if dataAfterTransfer(i)==-1 
    dataAfterTransfer(i)=erasureSend(data(i),probability);
  end
end
   
corruptedData=dataAfterTransfer;                   % return new matrix of bits
info=erasureCheckForError(corruptedData);          % check whether resended data still contains erased bits (with values of -1)

end