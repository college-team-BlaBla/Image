function [mask] = MeanFilter(r,c)
mask = ones(r,c) * (1/(r*c));
end