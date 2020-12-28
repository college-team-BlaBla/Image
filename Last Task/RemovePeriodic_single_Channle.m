function [FinalChannle] = RemovePeriodic_single_Channle(f)
%f = im2double(mat2gray(f));
F =fft2(f);

Mag =abs(F).^2;
Mag = mat2gray(log(Mag+1));
Mag = fftshift(Mag);
%figure,imshow(Mag),title('Power Spectrum');
NF = FilterNotch(Mag);
H =ifftshift(NF);
%figure,imshow(H),title('test')

filterd = H .* F;

Mag2 =abs(filterd).^2;
Mag2 = mat2gray(log(Mag2+1));
Mag2 = fftshift(Mag2);
%figure,imshow(Mag2),title('Power Spectrum Change')

filterd = ifft2(filterd);
%figure,imshow(filterd),title('Filterd');

FinalChannle = filterd;
end

