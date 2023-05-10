function [ result ] = line_detection( img )
img = double(img);
[h w l]=size(img);
result = zeros(size(img));
option1=str2double(inputdlg('Enter 1 for Sobel or 2 for Robert!'));
option2=str2double(inputdlg('Enter 1 for Horizontal or 2 for vertical or 3 for right diagonal or 4 for left diagonal!'));
%Sobel operator
if option1 == 1
    switch (option2)
        %Horizontal
        case 1
            M = [-1 -2 -1; 0 0 0; 1 2 1];
        %vertical
        case 2
            M = [-1 0 1; -2 0 2; -1 0 1];
        %Right diagonal
        case 3
            M = [2 1 0; 1 0 -1; 0 -1 -2];
        %Left diagonal
        case 4
            M = [0 -1 -1; 1 0 -1; 2 1 0];
    end
%Robert operator
elseif option1 == 2
    switch (option2)
        %Horizontal
        case 1
            M = [0 1 0; 0 0 0; 0 -1 0];
        %vertical
        case 2
            M = [0 0 0; 1 0 -1; 0 0 0]; 
        %Right diagonal
        case 3
            M = [1 0 0; 0 0 0; 0 0 -1]; 
        %Left diagonal
        case 4
            M = [0 0 1; 0 0 0; -1 0 0]; 
    end
end
if l==1
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
else
    sum = 0;
for i = 1 : 3
    for j = 1 : 3
        sum = sum + M(i,j);
    end
end
image = zeros((h+2),(w+2),3); 
for k=1:3
for i = 1 : h      
    for j = 1 : w
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
end
result = uint8(result);
end

