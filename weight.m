function [ new_image ] = weight( old_image )
[h,w,l] = size(old_image);
new_image = zeros(h,w,l);
filter=[20,8,16;5,5,5;16,8,20];
filter=double(filter);
old_image=double(old_image);
if l==1
    for i=2:h-1
        for j=2:w-1
            s= old_image(i-1:i+1,j-1:j+1);
            sum1=sum(sum(s.*filter));
            sum1=ceil(sum1/103);
            new_image(i,j)=sum1;
            
        end
    end
else
    for i=2:h-1
        for j=2:w-1
            for k=1:3
                s= old_image(i-1:i+1,j-1:j+1,k);
                sum1=sum(sum(s.*filter));
                sum1=ceil(sum1/103);
                new_image(i,j,k)=sum1;
            end
        end
    end
end
new_image=uint8( new_image);
end

