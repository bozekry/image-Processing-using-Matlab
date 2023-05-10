function [ Image ] = contraststretching( old_image )
[h,w,l] = size(old_image);
new_min = 0;
new_max = 255;
if l > 1
    old_max = max(max(max(old_image)));
    old_min = min(min(min(old_image)));
    new_image = zeros(h,w,l);
    for m = 1 : l
        for i = 1 : h
            for j = 1 : w
            new_image(i,j,m) = (((((new_max-new_min)/(old_max-old_min))*(old_image(i,j,m)-old_min)))+new_min);
            end
        end
    end
    Image = uint8(new_image);
else
    old_max = max(max(old_image));
    old_min = min(min(old_image));
    new_image = zeros(h,w);
    for i = 1 : h
        for j = 1 : w
            new_image(i,j) = (((((new_max-new_min)/(old_max-old_min))*(old_image(i,j)-old_min)))+new_min);
        end
    end
    Image = uint8(new_image);
end
end

