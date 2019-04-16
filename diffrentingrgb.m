%
cd('G:\matlab')
a =imread('input.jpg');
imshow(a);
red = a(:,:,1); green = a(:,:,2); blue = a(:,:,3);
figure
imshow(red)
figure
imshow(green)
figure
imshow(blue)
%d = impixel(a);
out = red > 180 & green > 150 & green < 254 & blue < 10;
figure
imshow(out)
out2 = imfill(out,'holes');
figure
imshow(out2)
out3 = bwmorph(out2,'erode');
figure
imshow(out3)
figure
imshow(out2)
out3 = bwmorph(out2,'dilate',1);
figure
imshow(out3)
out4 = imfill(out3,'holes');
figure
imshow(out4)
stats = regionprops(out4);
figure
imshow(out4)
doc regionprops