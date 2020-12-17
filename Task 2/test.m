I=imread('Joker.bmp');
figure,imshow(I);
%mean
%mask1 = MeanFilter(13,5);
%out1 = LinearFilter(I,mask1,'nan');

%gaussan opt1
%mask2 = GaussFilter(5,1); 
%out2 = LinearFilter(I,mask2,'nan');

%gaussian opt2
mask3 = GaussFilter2(4);
out3 = LinearFilter(I,mask3,'nan');

%Laplacian
%mask4 = Laplacian();
%out4 = LinearFilter(I,mask4,'cutoff');

%sobel h\v
%mask5 = Sobel('v');
%out5 = LinearFilter(I,mask5,'absolute');

%edge magnit
%out6 = EdgeMagnit(I);

figure, imshow(uint8(out4));