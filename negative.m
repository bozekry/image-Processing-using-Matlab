function [ new_image ] = negative( old_image )

[h,w,l]=size(old_image); % get size image
if l==1
    new_image=zeros(h,w);
    new_image=double(new_image);
    for i = 1 :h %row
        for j=1 :w %column
            new_image(i,j) =254-old_image(i,j); %white
        end
    end
else
    new_image=zeros(h,w,3);
    new_image=double(new_image);
    for k=1:3
        for i = 1 :h %row
            for j=1 :w %column
                new_image(i,j,k) =254-old_image(i,j,k);
            end
        end
    end
end
new_image=uint8(new_image);
end

