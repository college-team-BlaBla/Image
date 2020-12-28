function [filterd_img] = FilterNotch(D0,U0,V0,img)

[rows, columns,DX] = size(img);

x1 = rows/2 +U0;
y1 = columns/2 + V0 ;
x2 = rows/2 -U0;
y2 = columns/2 - V0 ;

image_thresholded = zeros(size(img));

for r = 1:rows    % for number of rows of the image
    for c = 1:columns    % for number of columns of the image
        D1 = sqrt((r-x1)^2+(c-y1)^2);
        D2 = sqrt((r-x2)^2+(c-y2)^2);
        if(D1>D0 && D2>D0)
           pixel = 1;
        else
           pixel = 0;
        
        end
        image_thresholded(r,c)=pixel;

    end 
end
filterd_img = image_thresholded;
