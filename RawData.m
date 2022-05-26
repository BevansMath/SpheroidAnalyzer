%% Image preprocessing

%Divide image "obj" into its respective RGB intensities
red = J(:,:,1);
green = J(:,:,1);
blue = J(:,:,1);
figure(1)
subplot(2,2,1); imshow(J); title('Original Image')
subplot(2,2,2); imshow(J); title('Red Plane')
subplot(2,2,3); imshow(J); title('Green Plane');
subplot(2,2,4); imshow(J); title('Blue Plane');

%Threshold the blue plane
figure(2)
level = 0.37;
bw2 = imbinarize(blue, level);
subplot(2,2,1); imshow(bw2); title('Blue plane threshold');

%% Image preprocessing continued

fill = imfill(bw2,'holes');
subplot(2,2,2); imshow(fill); title('Holes filled')

%Remove any blobs on border of image
clear = imclearborder(fill);
subplot(2,2,3); imshow(clear); title('Blobs removed');

%Remove blobs smaller than 7 pixels across
se = strel('disk',7);
open = imopen(fill, se);
subplot(2,2,4); imshow(open); title('Removed small blobs');

%% Measure the number of pixels in Image
numberOfPixels = numel(open);
[pixelCounts, grayLevels] = imhist(open);
numberofPixels = sum(open);

%% Measure the distance of migration in micromolars

diameter = regionprops(open, 'MajorAxisLength');

%Show result
figure(3)
imshow()
d = imdistline; %Includes a line to physically measure the object