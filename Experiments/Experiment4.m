% Yeshwantrao Chavan College of Engineering, Nagpur
% Department of Electronics and Telecommunication Engineering
% Session ODD 2024-25
% Name of Student: Aditya Bhongade
% Sec: 5-ET-A
% Roll No: 43
% Name of Course Teacher : Dr. Y. U. Chitriv(Dubey)/Prof. Y. S. Kale

%% Experiment 4 : Perform Piecewise Linear Transformations

clc; close all; clear;

%% Contrast Stretching

I1 = im2double(imread('Images3/low_con.tif'));
I2 = im2double(imread('Images3/high_con.tif'));
I3 = im2double(imread('Images3/light.tif'));
I4 = im2double(imread('Images3/dark.tif'));
I1r1 = min(min(I1));
I1r2 = max(max(I1));
I2r1 = min(min(I2));
I2r2 = max(max(I2));
I3r1 = min(min(I3));
I3r2 = max(max(I3));
I4r1 = min(min(I4));
I4r2 = max(max(I4));
L = 1;
B1 = L / (I1r2 - I1r1);
R1 = B1 * (I1 - I1r1);
B2 = L / (I2r2 - I2r1);
R2 = B2 * (I2 - I2r1);
B3 = L / (I3r2 - I3r1);
R3 = B3 * (I3 - I3r1);
B4 = L / (I4r2 - I4r1);
R4 = B4 * (I4 - I4r1);

figure,
subplot(2, 2, [1 2]), imshow(I1), title({"Low Contrast", "Input Image"});
subplot(2, 2, 3), imshow(R1), title({"Contrast Stretched", "using Formula"});
subplot(2, 2, 4), imshow(imadjust(I1, [I1r1; I1r2], [0; 1])), title({"Using", "imadjust()"});

figure,
subplot(2, 2, [1 2]), imshow(I2), title({"High Contrast", "Input Image"});
subplot(2, 2, 3), imshow(R2), title({"Contrast Stretched", "using Formula"});
subplot(2, 2, 4), imshow(imadjust(I2, [I2r1; I2r2], [0; 1])), title({"Using", "imadjust()"});

figure,
subplot(2, 2, [1 2]), imshow(I3), title({"Light", "Input Image"});
subplot(2, 2, 3), imshow(R3), title({"Contrast Stretched", "using Formula"});
subplot(2, 2, 4), imshow(imadjust(I3, [I3r1; I3r2], [0; 1])), title({"Using", "imadjust()"});

figure,
subplot(2, 2, [1 2]), imshow(I4), title({"Low Contrast", "Input Image"});
subplot(2, 2, 3), imshow(R4), title({"Contrast Stretched", "using Formula"});
subplot(2, 2, 4), imshow(imadjust(I4, [I4r1; I4r2], [0; 1])), title({"Using", "imadjust()"});

% Conclusion : Full Scale contrast stretching was performed successfully on
% light, dark, low and high contrast images. Results were matched with
% imadjust() output. The output images have complete dynamic range of intensity
% values i.e [0, 255] or [0, 1] if normalized.

%% Thresholding

I = imread('Images3/low_con.tif');
m = round(mean2(I)); % Threshold
L = 255;
[r, c] = size(I);
I1 = zeros(r, c);
I1(I >= m) = L;
figure,
subplot(1, 2, 1), imshow(I), title("Input Image");
subplot(1, 2, 2), imshow(I1, []), title("Threshold Output");

% Conclusion : Thresholding was performed successfully using mean value of 
% the input image as the threshold 'm'. Thresholding yileds binary output image 
% i.e black and white. 

%% Intensity Slicing

I = imread('Images3/kidney.tif');
[r, c] = size(I);
A = 140;
B = 200;
A1 = 35;
A2 = 235;
I1 = zeros(r, c); % without preserving background information
I1(:, :) = A1;
I2 = I; % with preserving background information
I1((I >= A) & (I <= B)) = A2;
I2((I >= A) & (I <= B)) = A2;

figure,
subplot(2, 2, [1 2]), imshow(I), title("Input Image");
subplot(2, 2, 3), imshow(I1, []), title({"Intensity Sliced","without BG info"});
subplot(2, 2, 4), imshow(I2, []), title({"Intensity Sliced","with BG info"});

% Conclusion : Intensity slicing was performed successfully with and
% without preserving background information. When intensity slicing is
% performed without preserving background information the output image has
% only 2 intensity levels.

%% Bit Plane Slicing

I = imread('Images3/usd_bill.tif');
[r, c] = size(I);
R = uint8(zeros(r, c, 8));
figure,
for i = 7 : -1 : 0
    I1 = bitand(uint8(2 ^ i), I);
    R(:,:,7-i+1) = I1;
    subplot(2, 4, 7-i+1), imshow(I1, []), title(sprintf("%dth bit plane", i));
end
I_recon = R(:, :, 1);
for i = 2 : 8
    I_recon = I_recon + R(:, :, i);
end
figure,
subplot(2, 1, 1), imshow(I), title("Input Image");
subplot(2, 1, 2), imshow(I_recon, []), title("Reconstructed Image");

% Conclusion : Bit plane sliciing was performed successfully. Each bit was
% extracted and stored and the original image was reconstructed using the
% stored bit planes.