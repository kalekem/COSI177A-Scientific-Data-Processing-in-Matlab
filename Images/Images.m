imageOne = imread('cleo.jpg');
imshow(imageOne)
imtool(imageOne);

rotateImage = imrotate(imageOne, 180);
imshow(rotateImage)
imtool(rotateImage);

