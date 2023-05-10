function [ array_red , array_green , array_blue ] = histogram_rgb( old_image )
[h w l]=size(old_image);
array_red = zeros(256,1);
array_green = zeros(256,1);
array_blue = zeros(256,1);
for i = 1 : h
    for j = 1 : w
        array_red(old_image(i,j,1)+1) = array_red(old_image(i,j,1)+1) +1;
        array_green(old_image(i,j,2)+1) = array_green(old_image(i,j,2)+1) +1;
        array_blue(old_image(i,j,3)+1) = array_blue(old_image(i,j,3)+1) +1;
    end
end
end