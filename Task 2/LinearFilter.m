function [res] = LinearFilter(I, Filter, postproc)
[oldR,oldC,~] = size(I);
[r,c,~]= size(Filter);
res = zeros(oldR,oldC);
I = double(padding(I,r,c));
Filter = double(Filter);
[R,C,~] = size(I);

for i=1 : R-r+1     
   for j=1 : C-c+1
       temp = Filter .* I(i:i+r-1,j:j+c-1);
       temp = sum(temp);
       temp = sum(temp);
       
       if strcmp(postproc,'cutoff') == 1
           if temp < 0
               temp = 0;
           elseif temp > 255
                   temp = 255;
           end
       elseif strcmp('absolute',postproc) == 1
           temp = abs(temp);
       end
       
       if j ==501
           disp("holly moly");
       end
       res(i,j)=temp;
   end
end
end