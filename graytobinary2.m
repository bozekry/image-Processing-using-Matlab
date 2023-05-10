function [ new_image ] = graytobinary2( old_image )
valuesplit = str2double(inputdlg('Please enter value of split!'));
% convert image from gray level to binary
[h,w,l] = size(old_image);
new_image = zeros(h,w);
for i = 1 : h
    for j = 1: w
        if  old_image(i,j) > valuesplit
            new_image(i,j) = 1;
        else 
            new_image(i,j) = 0 ;
        end
    end
end

new_image = logical(new_image);
        
end

