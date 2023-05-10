function [ new_image ] = identity( old_image )

[h,w,l]=size(old_image);
if l==1
new_image=zeros(h,w);
new_image=double(new_image);
for i=1:h
    for j=1:w
        new_image(i,j)=old_image(i,j);
    end
end
else
    new_image=zeros(h,w,3);
    new_image=double(new_image);
    for k=1:3
        for i=1:h
            for j=1:w
                new_image(i,j,k)=old_image(i,j,k);
            end
        end
    end
end
new_image=uint8(new_image);
end

