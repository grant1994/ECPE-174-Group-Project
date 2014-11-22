function BMPtoBin(image_name)
%Converts a 16 color bitmap image to a 3 bit binary
[imdata,immap]=imread(image_name);
image(imdata);
colormap(immap);
numpixels=numel(imdata);

%create .COE file
Bin_file=image_name;
Bin_file(end-2:end)='txt';
fid=fopen(Bin_file,'w');

%red = 9 -> 001
%green = A -> 010
%yellow = B -> 011
%blue = C -> 100
%purple = D -> 101
%cyan = E -> 110
%white = F -> 111
%black = 0 -> 000

newimdata=transpose(double(imdata));
%write image data to file
for j=1:(numpixels)
    if dec2hex(newimdata(j)) == dec2hex(0)
        k = 0;
    elseif dec2hex(newimdata(j)) == dec2hex(9)
        k = 1;
    elseif dec2hex(newimdata(j)) == dec2hex(10)
        k = 2;
    elseif dec2hex(newimdata(j)) == dec2hex(11)
        k = 3;
    elseif dec2hex(newimdata(j)) == dec2hex(12)
        k = 4;
    elseif dec2hex(newimdata(j)) == dec2hex(13)
        k = 5;
    elseif dec2hex(newimdata(j)) == dec2hex(14)
        k = 6;
    elseif dec2hex(newimdata(j)) == dec2hex(15)
        k = 7;
    else
        k = 7;    
     
    end    
    fprintf(fid,'%s\n',dec2bin(k));
end

%clean shutdown
fclose(fid);
