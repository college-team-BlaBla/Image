function [] = RemovePeriodicNoise(Image_Path)

img = imread(Image_Path);
figure,imshow(img),title('Kimo');

R =img(:,:,1);
G =img(:,:,2);
B =img(:,:,3);

figure,imshow(R),title('Red');
figure,imshow(G),title('Green');
figure,imshow(B),title('Blue');

X =RemovePeriodic_single_Channle(R);
Y =RemovePeriodic_single_Channle(G);
Z =RemovePeriodic_single_Channle(B);


final = cat(3,X,Y,Z);
figure,imshow(final),title('restord');
end

