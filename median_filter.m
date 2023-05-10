function [ min_img ] = median_filter( old_image )
[h w l]=size(old_image);
median_img=zeros(H,W);
median_img=double(median_img);
if l ==1
    for i=2:h-1
        for j=2:w-1
            s= img(i-1:i+1,j-1:j+1);
            median_img(i, j) =median(median((s)));
        end
    end
else
    for k=1:3
        for i=2:h-1
            for j=2:w-1
                s= img(i-1:i+1,j-1:j+1);
                median_img(i, j,k) =median(median((s))); 
            end
        end
    end
end
median_img=uint8(median_img);
end

