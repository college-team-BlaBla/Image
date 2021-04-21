%read Images
i = imread('1.3.jpg');
BW = im2bw(i,.05);
BW2 = bwareafilt(BW,[40 50]);
imshowpair(BW,BW2,'montage');
