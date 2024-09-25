% Yeshwantrao Chavan College of Engineering, Nagpur
% Department of Electronics and Telecommunication Engineering
% Session ODD 2024-25
% Name of Student: Aditya Bhongade
% Sec: 5-ET-A
% Roll No: 43
% Name of Course Teacher : Dr. Y. U. Chitriv(Dubey)/Prof. Y. S. Kale

%% Experiment 5 : Histogram Processing

clc; close all; clear;

%% Histogram

I = imread('Images3/light.tif');

figure,
subplot(1, 2, 1), imshow(I), title("Bright Image");
subplot(1, 2, 2),
stem(imhist(I)), xlim([0 255]);
title("Histogram");
xlabel("Intensities->");
ylabel("Frequency->");

%%

I1 = imread('Images3/high_con.tif');

figure,
subplot(1, 2, 1), imshow(I1), title("High Contrast Image");
subplot(1, 2, 2),
stem(imhist(I1)), xlim([0 255]);
title("Histogram");
xlabel("Intensities->");
ylabel("Frequency->");

%%

I2 = imread('Images3/low_con.tif');

figure,
subplot(1, 2, 1), imshow(I2), title("Low Contrast Image");
subplot(1, 2, 2),
stem(imhist(I2)), xlim([0 255]);
title("Histogram");
xlabel("Intensities->");
ylabel("Frequency->");

%%

I3 = imread('Images3/dark.tif');

figure,
subplot(1, 2, 1), imshow(I3), title("Dark Image");
subplot(1, 2, 2),
stem(imhist(I3)), xlim([0 255]);
title("Histogram");
xlabel("Intensities->");
ylabel("Frequency->");

%% Historgam Equalization

I1 = imread('Images3/low_con.tif');
H1 = imhist(I1);
[G1, T1] = histeq(I1);
HG1 = imhist(G1);

figure,
subplot(3, 2, 1), imshow(I1), title({"Original Image", "(Low Contrast)"});
subplot(3, 2, 2), stem(H1), title({"Histogram for", "Original Image"}), xlabel("Intensities->"), ylabel("Frequency->"), xlim([0 255]);
subplot(3, 2, 3), imshow(G1), title("Equalized Image");
subplot(3, 2, 4), stem(HG1), title({"Histogram for", "Equalized Image"}), xlabel("Intensities->"), ylabel("Frequency->"), xlim([0 255]);
subplot(3, 2, [5 6]), plot(T1), title({"Transfer Function for", "Equalized Image"}), xlabel("Input Intensities->"), ylabel("Mapping->");

I2 = imread('Images3/high_con.tif');
H2 = imhist(I2);
[G2, T2] = histeq(I2);
HG2 = imhist(G2);

figure,
subplot(3, 2, 1), imshow(I2), title({"Original Image", "(High Contrast)"});
subplot(3, 2, 2), stem(H2), title({"Histogram for", "Original Image"}), xlabel("Intensities->"), ylabel("Frequency->"), xlim([0 255]);
subplot(3, 2, 3), imshow(G2), title("Equalized Image");
subplot(3, 2, 4), stem(HG2), title({"Histogram for", "Equalized Image"}), xlabel("Intensities->"), ylabel("Frequency->"), xlim([0 255]);
subplot(3, 2, [5 6]), plot(T2), title({"Transfer Function for", "Equalized Image"}), xlabel("Input Intensities->"), ylabel("Mapping->");

I3 = imread('Images3/light.tif');
H3 = imhist(I3);
[G3, T3] = histeq(I3);
HG3 = imhist(G3);

figure,
subplot(3, 2, 1), imshow(I3), title({"Original Image", "(Bright)"});
subplot(3, 2, 2), stem(H3), title({"Histogram for", "Original Image"}), xlabel("Intensities->"), ylabel("Frequency->"), xlim([0 255]);
subplot(3, 2, 3), imshow(G3), title("Equalized Image");
subplot(3, 2, 4), stem(HG3), title({"Histogram for", "Equalized Image"}), xlabel("Intensities->"), ylabel("Frequency->"), xlim([0 255]);
subplot(3, 2, [5 6]), plot(T3), title({"Transfer Function for", "Equalized Image"}), xlabel("Input Intensities->"), ylabel("Mapping->");

I4 = imread('Images3/dark.tif');
H4 = imhist(I4);
[G4, T4] = histeq(I4);
HG4 = imhist(G4);

figure,
subplot(3, 2, 1), imshow(I4), title({"Original Image", "(Dark)"});
subplot(3, 2, 2), stem(H4), title({"Histogram for", "Original Image"}), xlabel("Intensities->"), ylabel("Frequency->"), xlim([0 255]);
subplot(3, 2, 3), imshow(G4), title("Equalized Image");
subplot(3, 2, 4), stem(HG4), title({"Histogram for", "Equalized Image"}), xlabel("Intensities->"), ylabel("Frequency->"), xlim([0 255]);
subplot(3, 2, [5 6]), plot(T4), title({"Transfer Function for", "Equalized Image"}), xlabel("Input Intensities->"), ylabel("Mapping->");

%% Conclusion
% The histograms of all the images are imperfect i.e they are not spread over
% the complete range of intensities. Histogram for a bright image is 
% accumulated at high intensities, for a dark image it is accumulated at 
% low intensities, for a low contrast image it is accumulated at the middle 
% and for a high contrast image it is spread. 
% Therefore, we need to equalize these histograms to get high contrast 
% images. After equalization, the histograms are fully spread over the range 
% of intensities.