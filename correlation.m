function [ result ] = correlation( old_image )
a1 = str2double(inputdlg('a1'));
b1 = str2double(inputdlg('b2'));
c1 = str2double(inputdlg('c3'));
a2 = str2double(inputdlg('a1'));
b2 = str2double(inputdlg('b2'));
c2 = str2double(inputdlg('c3'));
a3 = str2double(inputdlg('a1'));
b3 = str2double(inputdlg('b2'));
c3 = str2double(inputdlg('c3'));
filter = [a1 b1 c1;a2 b2 c2;a3 b3 c3];
filter=double(filter);
m = length(filter);
k = (m-1)/2;
old_image = double(padarray(old_image,[k,k]));
[h w l] =size(old_image);
result = zeros(h,w,l);
if l==1
    for i=2:h-1
        for j=2:w-1
            s= old_image(i-1:i+1,j-1:j+1);
            sum1=sum(sum(s.*filter));
            result(i,j)=sum1;
            if result(i,j)>255
                result(i,j)=255;
            elseif result(i,j)<0
                result(i,j)=0;
            end
        end
    end
else
    for k=1:3
        for i=2:h-1
            for j=2:w-1
                s= old_image(i-1:i+1,j-1:j+1,k);
                sum1=sum(sum(s.*filter));
                result(i,j,k)=sum1;
                if result(i,j,k)>255
                    result(i,j,k)=255;
                elseif result(i,j,k)<0
                    result(i,j,k)=0;
                end
            end
        end
    end
end

result = uint8(result);
end

