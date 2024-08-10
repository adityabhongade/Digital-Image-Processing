% Yeshwantrao Chavan College of Engineering, Nagpur
% Department of Electronics and Telecommunication Engineering
% Session ODD 2024-25
% Name of Student: Aditya Bhongade
% Sec: 5-ET-A
% Roll No: 43
% Name of Course Teacher : Dr. Y. U. Chitriv(Dubey)/Prof. Y. S. Kale

%% Experiment 2

%%

clc;
clear;
close all;

%% Excercise 1 - Perform Gray level resolution / Bit change

I = double(imread('Images2/skull.tif'));
n = 8;
figure,
for k = n : -1 : 1
    Ig = floor(I./(2^(n-k)));
    subplot(2, 4, n-k+1), 
    imshow(Ig, []);
    title(sprintf("%d bit image", k));
end

%% Excercise 2 - Perform downsampling

I = double(imread('Images2/rose_ch2.tif'));
[r, c] = size(I);
figure,
for k = 0:5
    Is = I(1:2^k:r, 1:2^k:c);
    [rs, cs] = size(Is);
    subplot(2, 3, k+1), 
    imshow(Is, []);
    title(sprintf("%d X %d", rs, cs));
end

%% Exercise 3 - Find the locus of Euclidean Distance

I = imread('Images2/rose_ch2.tif');
[n, m] = size(I);
I1 = zeros(n, m);
x_mid = n/2;
y_mid = m/2;
D = 320;
for r = 1:n
    for c = 1:m
        De = sqrt((r - x_mid)^2 + (c - y_mid)^2);
        if De <= D
            I1(r, c) = I(r, c);
        end
    end
end
figure,
subplot(1,2,1), imshow(I, []), title("Reference Image");
subplot(1,2,2), imshow(I1, []), title("Euclidean Locus");

%% Exercise 4 - Find the locus of City Block Distance

I = imread('Images2/rose_ch2.tif');
[n, m] = size(I);
I1 = zeros(n, m);
x_mid = n/2;
y_mid = m/2;
D = 320;
for r = 1:n
    for c = 1:m
        D4 = abs(r-x_mid) + abs(c-y_mid);
        if D4 <= D
            I1(r, c) = I(r,c);
        end
    end
end
figure,
subplot(1,2,1), imshow(I, []), title("Reference Image");
subplot(1,2,2), imshow(I1, []), title("City Block Locus");

%% Exercise 5 - Find the locus of Chessboard Distance

I = imread('Images2/rose_ch2.tif');
[n, m] = size(I);
I1 = zeros(n, m);
x_mid = n/2;
y_mid = m/2;
D = 320;
for r = 1:n
    for c = 1:m
        D8 = max(abs(r-x_mid), abs(c-y_mid));
        if D8 <= D
            I1(r, c) = I(r, c);
        end
    end
end
figure,
subplot(1,2,1), imshow(I, []), title("Reference Image");
subplot(1,2,2), imshow(I1, []), title("Chessboard Locus");

%% Conclusion
%After performing gray-level resolution/bit changes, a false contouring effect was observed in the output image
% as the gray-level resolution decreased. Picture details were progressively lost with each step or bit change.
% Downsampling the input image led to a checkerboard pattern in the output image. 
% The output image became more pixelated, with a more pronounced checkerboard pattern.
% Loci for Euclidean, city block, and chessboard distance measures were plotted and verified successfully.
% The Euclidean locus formed a circle centered at the middle pixel (reference pixel),
% the city block locus formed a rhombus/diamond shape, and the chessboard locus formed a square.