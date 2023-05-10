function [ new_image ] = inverselog( old_image )
c = str2double(inputdlg('Please enter Constat c!'));
[h,w,l]=size(old_image); % get size image gray level
if l==1
    new_image=zeros(h,w);
    new_image=double(new_image);
    for i=1:h
        for j=1:w
            new_image(i,j)=(2^(old_image(i,j)/c))-1;
        end
    end
else
    new_image=zeros(h,w,3);
    new_image=double(new_image);
    for k=1:3
        for i=1:h
            for j=1:w
                new_image(i,j,k)=(2^(old_image(i,j,k)/c))-1;
            end
        end
    end
end
new_image=uint8(new_image);
end


