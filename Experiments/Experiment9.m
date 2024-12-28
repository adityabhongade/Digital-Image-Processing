% Yeshwantrao Chavan College of Engineering, Nagpur
% Department of Electronics and Telecommunication Engineering
% Session ODD 2024-25
% Name of Student: Aditya Bhongade
% Sec: 5-ET-A
% Roll No: 43
% Name of Course Teacher : Dr. Y. U. Chitriv(Dubey)/Prof. Y. S. Kale

%% Experiment 9 : Global Thresholding

clc; close all; clear;

%% Global Thresholding

I = imread('Images10/septagon_orig.tif');
Inoisy = imread('Images10/septagon_noisy.tif');
Ishade = imread('Images10/septagon_shade.tif');
Ithumb = imread('Images10/thumb_noisy.tif');

HistOrig = imhist(I);
HistNoisy = imhist(Inoisy);
HistShade = imhist(Ishade);
HistThumb = imhist(Ithumb);

% Thresholds
T = graythresh(I);
Tnoisy = graythresh(Inoisy);
Tshade = graythresh(Ishade);
Tthumb = graythresh(Ithumb);

G = imbinarize(I, T);
Gnoisy = imbinarize(Inoisy, Tnoisy);
Gshade = imbinarize(Ishade, Tshade);
Gthumb = imbinarize(Ithumb, Tthumb);

figure,
subplot(1, 3, 1), imshow(Ithumb), title({"Original","Thumb Image"});
subplot(1, 3, 2), stem(HistThumb), title({"Histogram of", "Original Thumb Image"});
subplot(1, 3, 3), imshow(Gthumb), title({"Thresholded using", "Global Thresholding"});

figure,
subplot(1, 3, 1), imshow(I), title("Original Image");
subplot(1, 3, 2), stem(HistOrig), title({"Histogram of", "Original Image"});
subplot(1, 3, 3), imshow(G), title({"Thresholded using", "Global Thresholding"});

figure,
subplot(1, 3, 1), imshow(Inoisy), title({"Original Noisy", "Image"});
subplot(1, 3, 2), stem(HistNoisy), title({"Histogram of", "Original Noisy Image"});
subplot(1, 3, 3), imshow(Gnoisy), title({"Thresholded using", "Global Thresholding"});

figure,
subplot(1, 3, 1), imshow(Ishade), title({"Original","Shade Image"});
subplot(1, 3, 2), stem(HistShade), title({"Histogram of", "Original Shade Image"});
subplot(1, 3, 3), imshow(Gshade), title({"Thresholded using", "Global Thresholding"});

%% Conclusion
% Noise and noiseless images were thresholded using Global Thresholding
% succesfully. The images having Bi-Modal histograms have resulted in well
% thresholded images. On the other hand, images having Uni-Modal and Multi-Modal
% histograms have noise and have lost some object parts (information) in
% the output images.