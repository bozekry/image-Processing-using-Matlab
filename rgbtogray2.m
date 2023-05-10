function [ new_image ] = rgbtogray( old_image )
option = str2double(inputdlg('Please Enter option (1 , 2 , 3 , 4 , 5)!'));
% convert image from rgb to gray level
[h,w,~] = size(old_image);
new_image = zeros(h,w);
for i = 1 : h
    for j = 1: w
        if option == 1 % by sum three matrix then division 3 
            new_image(i,j) = (old_image(i,j,1)+old_image(i,j,2)+old_image(i,j,3))/3;
        elseif option == 2 % multiply each matrix by a number and then add those matrices
            new_image(i,j) = (old_image(i,j,1)*0.2+old_image(i,j,2)*0.6+old_image(i,j,3)*0.2);
        elseif option == 3 %we will show matrix in red color
            new_image(i,j) = old_image(i,j,1); 
        elseif option == 4 %we will show matrix in green color
            new_image(i,j) = old_image(i,j,2);
        elseif option == 5 %we will show matrix in blue color
            new_image(i,j) = old_image(i,j,3);
        else
            errordlg('invalid option!! , please try again (1,2,3,4,5)');
            return;
        end
    end
end

new_image = uint8(new_image);
        
end

