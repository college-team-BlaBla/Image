function [B] = DetectUselessBitsInImage(I)
% Detect Useless Bits In Image
% Check each bit plane, if a bit plane occupies less than 10 percent of the whole image then this bit is said be useless.
[H,W] = size(I);
B = [];
index = 1;
mask=1;
counter=0;
for x=1:8
    for h=1:H
        for w=1:W
            
            if(bitand(I(h,w),mask)~=0)
                counter = counter+1;
            end
        end
    end
    if(counter < 0.1*H*W)
        B(index) = x;
        index= index+1;
    end
    counter = 0;
    mask = bitsll(mask,1);
end
end