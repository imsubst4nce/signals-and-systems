#        #
 # # # #
  #Lab6#
  # # # #
 #       #

####################################
# Askisi - Anixnefsi akmwn eikonas #
####################################

... load image
X = imread("peppers.tiff");
figure; imshow(X);
X = double(rgb2gray(X));
figure; imshow(X, []);
[R C] = size(X)


... we will use the filter we previously created
n1 = 1:R;
n2 = 1:C;

... rows
for i=1:R
  for j=2:C
    Y(i,1) = 0;
    Y(i,j) = X(i,j) - X(i,(j - 1));
  endfor
endfor

figure; imshow(Y);
...

... columns
for i=2:R
  for j=1:C
    Z(1,i) = 0;
    Z(i,j) = X(i,j) - X((i-1),j);
  endfor
endfor

figure; imshow(Z);
...

... calculate absolute klisi dianismatos
for i = 1:R
  for j = 1:C
    G(i,j) = sqrt(Y(i,j)^2 + Z(i,j)^2);
  endfor
endfor
...

# plot the original grayscale image and the new with the edges
figure; imshow(G/255);

