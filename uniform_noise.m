function [ new_image ] = uniform_noise(img)
[h w l]=size(img);
img = double(img);
a = str2double(inputdlg('Please Enter a!'));
b = str2double(inputdlg('Please Enter b!'));

n = round((1/(b-a))*w*h);
if l==1
    for i=1:255
        for j=1:n
            row = ceil(rand(1,1)*h);
            colomn = ceil(rand(1,1)*w);
            img(row,colomn)=img(row,colomn)+i;
            
        end
    end
    new_img = contraststretching(img);
else
    for i=1:255
        for j=1:n
            row = ceil(rand(1,1)*h);
            colomn = ceil(rand(1,1)*w);
            for k=1:3
                img(row,colomn,k)=img(row,colomn)+i;
            end
        end
    end
    new_img = contraststretching(img);
end
new_image = uint8(new_img);
end

