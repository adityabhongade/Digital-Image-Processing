% Yeshwantrao Chavan College of Engineering, Nagpur
% Department of Electronics and Telecommunication Engineering
% Session ODD 2024-25
% Name of Student: Aditya Bhongade
% Sec: 5-ET-A
% Roll No: 43
% Name of Course Teacher : Dr. Y. U. Chitriv(Dubey)/Prof. Y. S. Kale

%% Experiment 10 : Find statistical moments and relative smoothness of texrure images.

clc; close all; clear;

%% Regular Texture

I_reg = double(imread('Texture/regular.gif'));
mean_reg = mean2(I_reg);
std_reg = std2(I_reg);
var_reg = std_reg ^ 2;
skew_reg = skewness(I_reg, 1, 'all');
kurt_reg = kurtosis(I_reg, 1, 'all');
rel_smooth_reg = 1 - (1/var_reg);

figure,
imshow(I_reg, []), title("Original Regular Texture Image");
fprintf("Regular Texture : \nMean = %f, Variance = %f, Skewness = %f, Kurtosis = %f\n and Relative Smoothness = %f", mean_reg, var_reg, skew_reg, kurt_reg, rel_smooth_reg);

%% Irregular Texture

I_irreg = double(imread('Texture/irregular.gif'));
mean_irreg = mean2(I_irreg);
std_irreg = std2(I_irreg);
var_irreg = std_irreg ^ 2;
skew_irreg = skewness(I_irreg, 1, 'all');
kurt_irreg = kurtosis(I_irreg, 1, 'all');
rel_smooth_irreg = 1 - (1/var_irreg);

figure,
imshow(I_irreg, []), title("Original Irregular Texture Image");
fprintf("\n\nIrregular Texture : \nMean = %f, Variance = %f, Skewness = %f, Kurtosis = %f and Relative Smoothness = %f", mean_irreg, var_irreg, skew_irreg, kurt_irreg, rel_smooth_irreg);

%% Randomized Texture

I_fin = double(imread('Texture/fin.gif'));
mean_fin = mean2(I_fin);
std_fin = std2(I_fin) * 255;
var_fin = std_fin ^ 2;
skew_fin = skewness(I_fin, 1, 'all');
kurt_fin = kurtosis(I_fin, 1, 'all');
rel_smooth_fin = 1 - (1/var_fin);

figure,
imshow(I_fin, []), title("Original Randomized Texture Image");
fprintf("\n\nRandomized Texture : \nMean = %f2, Variance = %f, Skewness = %f, Kurtosis = %f and Relative Smoothness = %f\n", mean_fin, var_fin, skew_fin, kurt_fin, rel_smooth_fin);

%% Conclusion
% First 4 statistical moments and Relative Smoothness were determined for 
% different types of textures. It is observed that all texture images have 
% high variance and relative smoothness values (higher than 0.93) 
% indicating high variations in intensities.