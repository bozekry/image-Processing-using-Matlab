function [ new_img ] = gaussian_noise(img )
[h w l]=size(img);
sig = str2double(inputdlg('Please Enter sigma!'));
m = str2double(inputdlg('Please Enter m!'));
if l==1
for i=1:255
    n = round(((exp(-((i-m)^2/(2*sig*sig))))/(sqrt(2*pi*sig)))*w*h);
    for j=1:n
        row = ceil(rand(1,1)*h);
        colomn = ceil(rand(1,1)*w);
        img(row,colomn)=img(row,colomn)+i;
    end
end
new_img = contraststretching(img);
else
    for i=1:255
        n = round(((exp(-((i-m)^2/(2*sig*sig))))/(sqrt(2*pi*sig)))*w*h);
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
new_img = uint8(new_img);
end

