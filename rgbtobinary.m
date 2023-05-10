function [ new_image ] = rgbtobinary( old_image )
option = str2double(inputdlg('Please Enter option (1 , 2 , 3 , 4 , 5)!'));
valuesplit = str2double(inputdlg('Please enter value of split!'));
% convert image from rgb to binary
%we will convert image from rgb to gray level then convert to binary
[h,w,~] = size(old_image);
new_image = zeros(h,w);

for i = 1 : h
    for j = 1: w
        if option == 1 % by sum three matrix then division 3 
            new_image(i,j) = (old_image(i,j,1)+old_image(i,j,2)+old_image(i,j,3))/3;
            if  new_image(i,j) > valuesplit
                 new_image(i,j) = 1;
            else 
                 new_image(i,j) = 0 ;
            end
        elseif option == 2 % multiply each matrix by a number and then add those matrices
            new_image(i,j) = (old_image(i,j,1)*0.2+old_image(i,j,2)*0.6+old_image(i,j,3)*0.2);
            if  new_image(i,j) > valuesplit
                 new_image(i,j) = 1;
            else 
                 new_image(i,j) = 0 ;
            end
        elseif option == 3 %we will show matrix in red color
            new_image(i,j) = old_image(i,j,1);
            if  new_image(i,j) > valuesplit
                 new_image(i,j) = 1;
            else 
                 new_image(i,j) = 0 ;
            end
        elseif option == 4 %we will show matrix in green color
            new_image(i,j) = old_image(i,j,2);
            if  new_image(i,j) > valuesplit
                 new_image(i,j) = 1;
            else 
                 new_image(i,j) = 0 ;
            end
        elseif option == 5 %we will show matrix in blue color
            binaryimg(i,j) = old_image(i,j,3);
            if  new_image(i,j) > valuesplit
                 new_image(i,j) = 1;
            else 
                 new_image(i,j) = 0 ;
            end
        else
            errordlg('invalid option!! , please try again (1,2,3,4,5)');
            return;
        end
    end
end

new_image = logical(new_image);

end

