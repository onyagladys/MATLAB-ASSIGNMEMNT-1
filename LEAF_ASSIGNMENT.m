leavesarray(1) = struct('name','guava leaf','venation','net veined','margin','entire','class','dicotyledonous');
leaf1 = imread("C:\Users\HP\OneDrive\Desktop\LEAFPROJECT\LEAF IMAGES\IMAGE 1.jpeg");
figure;
imshow(leaf1)
ds3 = im2gray(leaf1);
figure;
imshowpair(leaf1,ds3,"montage")
fs = imlocalbrighten(leaf1);
figure;
imshow(fs)
S = sum(ds3,2);
figure;
plot(S)
leavesarray(2) = struct('name', 'maize leaf', 'venation', 'parallel', 'margin', 'entire', 'class', 'monocotyledonous');
leaf2 = imread("C:\Users\HP\OneDrive\Desktop\LEAFPROJECT\LEAF IMAGES\IMAGE 2.jpeg");
figure;
imshow(leaf2)
ds2 = im2gray(leaf2);
figure;
imshowpair(leaf2, ds2, "montage");
fs2 = imbinarize(ds2);
figure;
imshow(fs2);
stats2 = regionprops(fs2,'BoundingBox');
maizeheight = stats2(1).BoundingBox(4);
figure;
imshow(fs2)
S2 = sum(fs2,2);
figure;
plot(S2)
leavesarray(3) = struct('name', 'rose leaf', 'venation', 'pinnate', 'margin', 'serrated', 'class', 'dicotyledonous');
leaf3 = imread("C:\Users\HP\OneDrive\Desktop\LEAFPROJECT\LEAF IMAGES\IMAGE 3.jpeg");
figure;
imshow(leaf3)
ds3 = im2gray(leaf3);
figure;
imshowpair(leaf3, ds3, "montage");
fs3 = edge(ds3, "Canny");
figure;
imshow(fs3);
roseedgedensity = sum(fs3(:));
S3 = sum(fs3, 2);
figure;
plot(S3)
leavesarray(4) = struct('name', 'maple leaf', 'venation', 'palmate', 'margin', 'lobed', 'class', 'dicotyledonous');
leaf4 = imread("C:\Users\HP\OneDrive\Desktop\LEAFPROJECT\LEAF IMAGES\IMAGE 4.jpeg");
figure;
imshow(leaf4);
ds4 = im2gray(leaf4);
figure;
imshowpair(leaf4, ds4, "montage");
fs4 = imbinarize(ds4);
figure;
imshow(fs4);
maple_area = sum(fs4(:));
S4 = sum(fs4, 1);
figure;
plot(S4)
leavesarray(5) = struct('name', 'bamboo leaf', 'venation', 'parallel', 'margin', 'entire', 'class', 'monocotyledonous');
leaf5 = imread("C:\Users\HP\OneDrive\Desktop\LEAFPROJECT\LEAF IMAGES\IMAGE 5.jpeg");
figure;
imshow(leaf5);
ds5 = im2gray(leaf5);
figure;
imshowpair(leaf5, ds5, "montage");
fs5 = imbinarize(ds5);
figure;
imshow(fs5);
stats5 = regionprops(fs5, 'BoundingBox');
bamboo_aspect_ratio = stats5(1).BoundingBox(4) / stats5(1).BoundingBox(3);
S5 = sum(ds5, 2);
figure;
plot(S5)
leavesarray(6) = struct('name', 'hibiscus leaf', 'venation', 'reticulate', 'margin', 'dentate', 'class', 'dicotyledonous');
% 1. Metadata definition
leavesarray(6) = struct('name','hibiscus leaf','venation','reticulate','margin','dentate','class','dicotyledonous');

% 2. Read image
leaf6 = imread("C:\Users\HP\OneDrive\Desktop\LEAFPROJECT\LEAF IMAGES\IMAGE 6.jpeg");
figure;
imshow(leaf6);
ds6 = im2gray(leaf6);
figure;
imshowpair(leaf6, ds6, "montage");
fs6 = leaf6(:,:,2) - leaf6(:,:,1); 
figure;
imshow(fs6);
hibiscus_greenness = mean(fs6(:));
S6 = sum(fs6, 2);
figure;
plot(S6)
leavesarray(7) = struct('name', 'oak leaf', 'venation', 'pinnate', 'margin', 'lobed', 'class', 'dicotyledonous');
leaf7 = imread("C:\Users\HP\OneDrive\Desktop\LEAFPROJECT\LEAF IMAGES\IMAGE 7.jpeg");
figure;
imshow(leaf7);
ds7 = im2gray(leaf7);
figure;
imshowpair(leaf7, ds7, "montage");
fs7 = imbinarize(ds7);
figure;
imshow(fs7);
stats7 = regionprops(fs7, 'Area', 'Perimeter');
oak_roundness = (4 * pi * stats7(1).Area) / (stats7(1).Perimeter^2);
S7 = sum(ds7, 2);
figure;
plot(S7)