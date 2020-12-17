function [img] = EdgeMagnit(I)
mask_H = Sobel('h');
mask_V = Sobel('v');
y = LinearFilter(I,mask_H,'absolute');
x = LinearFilter(I,mask_V,'absolute');
z = x+y;
img = LinearFilter(z,[1;1],'cutoff');
end