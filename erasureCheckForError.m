%{
Function checks whether erasure of bit occured during the transmission
through the canal. We assume that bit was ,,erased", when -1 is present in
the data matrix.
parameters:
data - matrix containg 0 and 1
returns:
true if error occured or false if not.
 %}
function [errorOccured]=checkForErrorErasure(data)
    [m,n]=size(data);
    errorOccured=false;
    for i=1:n
      if data(i)==-1
        errorOccured=true;
        break;
      end
    end
end