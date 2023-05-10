function [ hist1 ] = histogram_gray( old_image )
hist1=zeros(256,1);
[h w l]=size(old_image);
for i=1 :h
    for j=1 :w
        hist1(old_image(i,j)+1)= hist1(old_image(i,j)+1)+1;
    end
end
end

