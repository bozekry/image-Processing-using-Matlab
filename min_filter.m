function [ min_img ] = min_filter( old_image )
[h w l]=size(old_image);
min_img=zeros(h,w);
min_img=double(min_img);
if l ==1
    for i=2:h-1
        for j=2:w-1
            s= old_image(i-1:i+1,j-1:j+1);
            min_img(i, j) =median(median((s)));
        end
    end
else
    for k=1:3
        for i=2:h-1
            for j=2:w-1
                s= old_image(i-1:i+1,j-1:j+1,k);
                min_img(i, j,k) =min(min((s)));
                
            end
        end
    end
end
min_img=uint8(min_img);
end

