function [ max_img ] = max_filter( img )
[H W L]=size(img);
max_img=zeros(H,W);
max_img=double(max_img);
if L ==1
    for i=2:H-1
        for j=2:W-1
            s= img(i-1:i+1,j-1:j+1);
            max_img(i, j) = max(max((s)));
        end
    end
else
    for k=1:3
        for i=2:H-1
            for j=2:W-1
                s= img(i-1:i+1,j-1:j+1,k);
                max_img(i, j,k) = max(max((s)));
            end
        end
    end
end
max_img=uint8(max_img);
end

