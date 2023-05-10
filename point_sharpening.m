function [ result ] = point_sharpening( img )
img = double(img);
[h w l]=size(img);
result = zeros(size(img));

M = [0 1 0; 1 -4 1; 0 1 0];
if l == 1
    sum = 0;
    for i = 1 : 3
        for j = 1 : 3
            sum = sum + M(i,j);
        end
    end
    image = zeros((h+2),(w+2));
    for i = 1 : h
        for j = 1 : w
            image(i+2,j+2) = img(i,j);
        end
    end
    %to calculate sum of products then assign at location
    value = 0;
    for i = 3 : (h+2)
        for j = 3 : (w+2)
            start_mask_i = i-2;
            start_mask_j = j-2;
            value = 0;
            for i_mask=1 : 3
                for j_mask=1 : 3
                    value = value + (image(start_mask_i,start_mask_j) * M(i_mask,j_mask));
                    start_mask_j = start_mask_j + 1;
                end
                start_mask_i = start_mask_i + 1;
                start_mask_j = j-2;
            end
            result(i,j)  = value;
        end
    end
    for i = 1 : h
        for j = 1 : w
            result(i,j) = img(i,j) + result(i,j) ;
        end
    end
else
    sum = 0;
    for i = 1 : 3
        for j = 1 : 3
            sum = sum + M(i,j);
        end
    end
    image = zeros((h+2),(w+2));
    for i = 1 : h
        for j = 1 : w
            for k=1:3
                image(i+2,j+2,k) = img(i,j,k);
            end
        end
    end
    %to calculate sum of products then assign at location
    value = 0;
    for k=1:3
        for i = 3 : (h+2)
            for j = 3 : (w+2)
                start_mask_i = i-2;
                start_mask_j = j-2;
                value = 0;
                for i_mask=1 : 3
                    for j_mask=1 : 3
                        value = value + (image(start_mask_i,start_mask_j,k) * M(i_mask,j_mask));
                        start_mask_j = start_mask_j + 1;
                    end
                    start_mask_i = start_mask_i + 1;
                    start_mask_j = j-2;
                end
                result(i,j,k)  = value;
            end
        end
    end
    for k=1:3
        for i = 1 : h
            for j = 1 : w
                result(i,j,k) = img(i,j,k) + result(i,j,k) ;
            end
        end
    end
end
result = uint8(result);
end
