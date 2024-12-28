% Yeshwantrao Chavan College of Engineering, Nagpur
% Department of Electronics and Telecommunication Engineering
% Session ODD 2024-25
% Name of Student: Aditya Bhongade
% Sec: 5-ET-A
% Roll No: 43
% Name of Course Teacher : Dr. Y. U. Chitriv(Dubey)/Prof. Y. S. Kale

%% Experiment 6 : Low Pass Filtering (Smoothing) in Spatial Domain

clc; close all; clear;

%% Simple Averaging

I = im2double(imread('Images3/a_blurring_ch3.tif'));

m3x3 = ones(3, 3) / 9;

g = imfilter(I, m3x3, 'same');

figure,
subplot(1, 2, 1), imshow(I), title("Original Image");
subplot(1, 2, 2), imshow(g, []), title({"Simple Averaging", "3x3 Mask"});


%% Simple Averaging using 3x3, 5x5 and 9x9 masks.

m5x5 = ones(5, 5) / 25;
m9x9 = ones(9, 9) / 81;

g1 = imfilter(I, m5x5, 'same');
g2 = imfilter(I, m9x9, 'same');

figure,
subplot(2, 2, 1), imshow(I), title("Original Image");
subplot(2, 2, 2), imshow(g, []), title({"Simple Averaging", "3x3 Mask"});
subplot(2, 2, 3), imshow(g1, []), title({"Simple Averaging", "5x5 Mask"});
subplot(2, 2, 4), imshow(g2, []), title({"Simple Averaging", "9x9 Mask"});

%% Weighted Avearging

mw5x5 = [1 1 2 1 1; 1 2 4 2 1; 2 4 8 4 2; 1 2 4 2 1; 1 1 2 1 1];
sum = sum(mw5x5(:));
mw5x5 = mw5x5 / sum;

gw1 = imfilter(I, mw5x5, 'same');

figure,
subplot(2, 2, [1 2]), imshow(I), title("Original Image");
subplot(2, 2, 3), imshow(g1, []), title({"Simple Averaging", "5x5 Mask"});
subplot(2, 2, 4), imshow(gw1, []), title({"Weighted Averaging", "5x5 Mask"});

%% Conclusion 
% The input images were effectively smoothened using both Simple and 
% Weighted Averaging filters. As the filter size increased, the blurring 
% effect also became more pronounced.
% Weighted Averaging demonstrated superior enhancement compared to Simple 
% Averaging, as it better preserves important details in the images.