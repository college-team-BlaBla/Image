function [padim] = padding(I, r, c)
div=idivide(uint8([r,c]),uint8([2, 2]));
padim = padarray(I,double([div(1), div(2)]),0,'post');
padim = padarray(padim,double([div(1), div(2)]), 0, 'pre');
end