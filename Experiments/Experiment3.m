% Yeshwantrao Chavan College of Engineering, Nagpur
% Department of Electronics and Telecommunication Engineering
% Session ODD 2024-25
% Name of Student: Aditya Bhongade
% Sec: 5-ET-A
% Roll No: 43
% Name of Course Teacher : Dr. Y. U. Chitriv(Dubey)/Prof. Y. S. Kale

%% Experiment 3 : Perform Intensity Transformation

%%

clc;
clear;
close all;

%% Excercise 1 : Perform Image Negative

I = imread('Images3/mammogram.tif');
L = max(max(I));
I1 = L - I;
figure,
subplot(1, 2, 1), imshow(I), title("Input Image");
subplot(1, 2, 2), imshow(I1), title("Negative Image");

% Conclusion : The image negative transformation was successfully applied, 
% resulting in an output image where the intensity values are inverted compared to 
% the original (input) image. This process darkens the light pixels and 
% lightens the dark pixels of the original (input) image.

%% Excercise 2 : Perform Log Transformation

I = im2double(imread('Images3/particle.tif'));
C = 5;
I1 = C * log(1 + I);
figure,
subplot(1, 2, 1), imshow(I), title("Input Image");
subplot(1, 2, 2), imshow(I1), title("Log Transformed Image");

% Conclusion : The log transformation was successfully applied to the input
% image. The output image has wider intensity range compared to the input image.
% Log transformation broadens the narrow intensity range in the input image
% resulting in broad intensity range in the output image, enhancing overall
% visibility and details.

%% Exercise 3A : Perform nth power transformation i.e power > 1

I = im2double(imread('Images3/aerial.tif'));
C = 1;
y1 = 2.0;
y2 = 2.5;
y3 = 3.0;
R1 = C * I.^y1;
R2 = C * I.^y2;
R3 = C * I.^y3;
figure,
subplot(2, 2, 1), imshow(I), title("Input Image");
subplot(2, 2, 2), imshow(R1), title("Power Transformed Gamma = 2.0");
subplot(2, 2, 3), imshow(R2), title("Power Transformed Gamma = 2.5");
subplot(2, 2, 4), imshow(R3), title("Power Transformed Gamma = 3.0");

% Conclusion : nth Power Transformation was successfully appliead for three
% different values of gamma (2.0, 2.5 and 3.0). The output image is
% relatively darker than the input image. The washed-out or overexposed
% input image was enhanced.

%% Exercise 3B : Perform nth root transformation i.e power < 1

I = im2double(imread('Images3/spine.tif'));
C = 1;
y1 = 0.75;
y2 = 0.5;
y3 = 0.25;
R1 = C * I.^y1;
R2 = C * I.^y2;
R3 = C * I.^y3;
figure,
subplot(2, 2, 1), imshow(I), title("Input Image");
subplot(2, 2, 2), imshow(R1), title("Root Transformed Gamma = 0.75");
subplot(2, 2, 3), imshow(R2), title("Root Transformed Gamma = 0.5");
subplot(2, 2, 4), imshow(R3), title("Root Transformed Gamma = 0.25");

% Conclusion : nth Root Transformation was successfully appliead for three
% different values of gamma (0.75, 0.5 and 0.25). The output image is
% relatively lighter than the input image. The underexposed input image was
% enhanced improving visibility and fine details
