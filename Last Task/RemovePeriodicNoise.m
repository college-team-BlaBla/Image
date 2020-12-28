function [] = RemovePeriodicNoise(Image_Path ,D0,U0,V0)

img = imread(Image_Path);
figure,imshow(img),title('Original');

R =GetImageChannel(img,'Red');
G =GetImageChannel(img,'Green');
B =GetImageChannel(img,'Blue');



X =RemovePeriodic_single_Channle(R(:,:,1),D0,U0,V0);
Y =RemovePeriodic_single_Channle(G(:,:,2),D0,U0,V0);
Z =RemovePeriodic_single_Channle(B(:,:,3),D0,U0,V0);

%figure,imshow(X),title('X');
%figure,imshow(Y),title('Y');
%figure,imshow(Z),title('Z');

final = uint8(cat(3,X,Y,Z));
figure,imshow(final),title('Restord');

end

