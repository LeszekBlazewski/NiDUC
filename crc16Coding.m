%{
    Function codes the given data with crc16 protocol.
    Parameters:
    data - vertical vector which contains data to encode
    returns:
    vertical vector which contains encoded data.
%}
function [codedData] = crc16Coding(data)
msg = data.';   %transpose the matrix because generator requires it
gen = comm.CRCGenerator([16 15 2 0],'ChecksumsPerFrame',1); % generator of checksum
codedData = step(gen,msg);  % uses generator to encode provided data
codedData = codedData.';    % transpose back to vertical
end