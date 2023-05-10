function [ new_image ] = powerr( old_image )
y = str2double(inputdlg('Please enter Constat y!'));
[h,w,l]=size(old_image); % get size image
old_image=double(old_image);
if l==1
    new_image=zeros(h,w);
    new_image=double(new_image);
    c=1;
    for i=1:h
        for j=1:w
            new_image(i,j)=c*old_image(i,j)^(y);
        end
    end
else
    new_image=zeros(h,w,3);
    new_image=double(new_image);
    c=1;
    for k=1:3
        for i=1:h
            for j=1:w
                new_image(i,j,k)=c*old_image(i,j,k)^y;
            end
        end
    end
end
new_image=uint8(new_image);
end

