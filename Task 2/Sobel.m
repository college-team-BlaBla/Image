function [mask] = Sobel(flag)
if strcmp(flag, 'h') == 1
    mask = [-1 -2 -1;0 0 0;1 2 1];
else
    mask = [-1 0 1;-2 0 2;-1 0 1];
end
end