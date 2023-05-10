function [ result ] = medpoint( img )
[H W L]=size(img);
if L==1
   result=zeros(H,W);
   result=double(result); 
   for i=2:H-1
       for j=2:W-1
           subimg =img(i-1:i+1,j-1:j+1);
           result(i, j) = 0.5*(min(min((subimg))) + max(max((subimg))));
       end
    end
    
    result = uint8(result);
else
    result=zeros(H,W,3);
    result=double(result);
    for k=1:3
        for i=2:H-1
            for j=2:W-1
                subimg =img(i-1:i+1,j-1:j+1,k);
                result(i, j,k) = 0.5*(min(min((subimg))) + max(max((subimg))));
            end
        end
    end
    result = uint8(result);
end
end

