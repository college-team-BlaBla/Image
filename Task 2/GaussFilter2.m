function [mask] =GaussFilter2(sig)
sig = double(sig);
N = 3.7*sig-0.5;
size = uint8(2*N+1);
mask = ones(size,size);
mid = double(idivide(int8(size),int8(2),'ceil'));
p=pi;

for i=1:size
    for j=1:size
        x = int8(i)-mid;
        y = int8(j) - mid;
        mask(i,j) = exp(double(-1*(x*x+y*y))/double((2*sig*sig)))/(2*p*sig*sig);
    end
end
mask = mask ./sum(sum(mask));
end