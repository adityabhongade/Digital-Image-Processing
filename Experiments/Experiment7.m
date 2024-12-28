% Yeshwantrao Chavan College of Engineering, Nagpur
% Department of Electronics and Telecommunication Engineering
% Session ODD 2024-25
% Name of Student: Aditya Bhongade
% Sec: 5-ET-A
% Roll No: 43
% Name of Course Teacher : Dr. Y. U. Chitriv(Dubey)/Prof. Y. S. Kale

%% Experiment 7 : High Pass Filtering (Sharpening) in Spatial Domain

clc; close all; clear;

%% Unsharp Masking & High Boost Filtering

I = im2double(imread('Images3/dip_xe.tif'));

f = im2double([0 0 0; 0 1 0; 0 0 0]);
f_bar = im2double(ones(3, 3) / 9);

gm = f - f_bar;

r = f + gm;
r1 = f + 5.*gm;

g = imfilter(I, r, 'same');
g1 = imfilter(I, r1, 'same');

figure,
subplot(2, 2, [1 2]), imshow(I), title("Original Image");
subplot(2, 2, 3), imshow(g), title({"Unsharp Masking"});
subplot(2, 2, 4), imshow(g1), title("High Boost Filtering");

%% Conclusion
% The input images were effectively sharpened using Unsharp Masking and 
% High Boost Filtering. Both techniques produced output images that 
% exhibited improved detail compared to the originals. Among them, High 
% Boost Filtering (K = 5) delivered superior enhancement and more 
% pronounced edge highlighting than Unsharp Masking (K = 1).