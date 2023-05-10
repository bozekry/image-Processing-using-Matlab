function [Image] = equaliztionhistogram( old_image )
%algorithm
%first we will calculate arrayfreq of each matrix (red , green , blue)
%then we will looping on these matrix and loop on each arrayfreq and stop
%when index  = image(i,j)+1 because we want to stop with index until
%calculate commulative of prop of old pixels of image 
%we will repeat these steps 

[h,w,l] = size(old_image);

if l > 1

    array_freq_red = zeros(256,1);
    array_freq_green = zeros(256,1);
    array_freq_blue = zeros(256,1);

    new_image = zeros(h,w,l);

    for i = 1 : h        %nk
        for j = 1 : w
            array_freq_red(old_image(i,j,1)+1) = array_freq_red(old_image(i,j,1)+1)+1;
            array_freq_green(old_image(i,j,2)+1) = array_freq_green(old_image(i,j,2)+1)+1;
            array_freq_blue(old_image(i,j,3)+1) = array_freq_blue(old_image(i,j,3)+1)+1;
        end
    end



    for k = 1 : l
        for i = 1 : h        
            for j = 1 : w
                if k ==1
                    sum = 0;
                    index = old_image(i,j,1)+1;
                    for stop = 1 : index
                          sum = sum + array_freq_red(stop);    
                    end
                    cumulative = sum / (h*w);
                    value_round = round(255*cumulative);
                    new_image(i,j,1) = value_round;
                elseif k == 2
                    sum = 0;
                    index = old_image(i,j,2)+1;
                    for stop = 1 : index
                          sum = sum + array_freq_red(stop);    
                    end
                    cumulative = sum / (h*w);
                    value_round = round(255*cumulative);
                    new_image(i,j,2) = value_round;
                else
                    sum = 0;
                    index = old_image(i,j,3)+1;
                    for stop = 1 : index
                          sum = sum + array_freq_red(stop);    
                    end
                    cumulative = sum / (h*w);
                    value_round = round(255*cumulative);
                    new_image(i,j,3) = value_round;
                end
            end
        end
    end

    Image = uint8(new_image);

else
    array_freq = zeros(256,1);
    new_image = zeros(h,w);

    for i = 1 : h        %nk
        for j = 1 : w
            array_freq(old_image(i,j)+1) = array_freq(old_image(i,j)+1)+1;
        end
    end

    for i = 1 : h        
        for j = 1 : w
            sum = 0;
            index = old_image(i,j)+1;
            for stop = 1 : index
                sum = sum + array_freq(stop);    
            end
            cumulative = sum / (h*w);
            value_round = round(255*cumulative);
            new_image(i,j) = value_round;
        end
    end

    Image = uint8(new_image);

end

end
