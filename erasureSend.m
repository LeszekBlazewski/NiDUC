%{
Function simulates ,,erasing" of the bits by inserting -1 value when error
occurs.
rand(1,1) returns uniformly distributed random value between 0 and 1. 
parameters:
data - matrix of 0 and 1 which contains the signal
probability - specifies the probability of erasure occurence
returns:
matrix with corrupted or valid data based on the probability parameter
%}
function [bit]= erasureSend(data, probability)
  if rand(1,1)>probability
    bit=data;
    else
    bit=-1;
  end
end