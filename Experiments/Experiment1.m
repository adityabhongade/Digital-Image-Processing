% Yeshwantrao Chavan College of Engineering, Nagpur
% Department of Electronics and Telecommunication Engineering
% Session ODD 2024-25
% Name of Student: Aditya Bhongade
% Sec: 5-ET-A
% Roll No: 43
% Name of Course Teacher : Dr. Y. U. Chitriv(Dubey)/Prof. Y. S. Kale

%% Experiment 1 - Basic Image Operations

%%

clc;
clear;
close all;

%% Excercise 1 - Reading and displaying the image and image attributes.

I = imread('cameraman.tif');
whos I

[r,c] = size(I);
minI = min(min(I));
maxI = max(max(I));
avgI = mean2(I);
ele_no = numel(I);

fprintf("Dimensions of I are %d X %d", r, c);
fprintf("\nMinimum intensity value = %d \nMaximum intensity value = %d", minI, maxI);
fprintf("\nAverage value = %f", avgI);
fprintf("\nNumber of elements in I = %d\n", ele_no);

figure,
imshow(I);
title('Grayscale Image');

%% Excercise 2 - Convert gray scale image to binary and store in I1

I1 = im2bw(I);
whos I1

figure, 
subplot(1,2,1), imshow(I), title('Gray Scale Image');
subplot(1,2,2), imshow(I1), title('Binary Image');

%% Exercise 3 - Extract Red, Green and Blue plane of color image

A=imread('peppers.png');
whos A

R = A(:,:,1);
whos R

G = A(:,:,2);
whos G

B = A(:,:,3);
whos B

figure, 
subplot(2,2,1), imshow(A), title('Color Image')
subplot(2,2,2), imshow(R), title('R Plane')
subplot(2,2,3), imshow(G), title('G Plane')
subplot(2,2,4), imshow(B), title('B Plane')

%% Exercise 4 - Display only Red, Green and Blue Planes

% Red Plane
A1 = A;
A1(:,:,2) = 0;
A1(:,:,3) = 0;
whos A1

% Green Plane
A2 = A;
A2(:,:,1) = 0;
A2(:,:,3) = 0;
whos A2

% Blue Plane
A3 = A;
A3(:,:,1) = 0;
A3(:,:,2) = 0;
whos A3

figure, 
subplot(2,2,1), imshow(A), title('Original Color Image');
subplot(2,2,2), imshow(A1), title('Red Plane');
subplot(2,2,3), imshow(A2), title('Green Plane');
subplot(2,2,4), imshow(A3), title('Blue Plane');

%% Exercise 5 - Displaying Indexed Images

load trees

figure,
imshow(X,[]);
title("Indexed Image without Map (Grayscale)");

figure,
imshow(X,map);
title("Indexed Image with Map");

%% Conclusion

%Basic image operations such as reading, displaying, grayscale-to-binary image conversion, 
% and color plane extraction were performed successfully. Indexed images were 
% displayed both with and without a colormap. When an individual plane of a colored image was displayed, 
% we observed a grayscale image, as all three RGB planes are required to 
% display colors (other than black, white, and gray).
% A grayscale image was observed when displaying an indexed image without a colormap, as the 
% RGB values are stored in the colormap.
