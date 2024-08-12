% patterns.m from https://github.com/adityabhongade/Digital-Image-Processing/Patterns
% by Aditya Bhongade - https://github.com/adityabhongade
% 
% Description : Basic patterns.

%% Patterns

clc; close all; clear;

%% Gray Shades

I = zeros(256, 256);
for i = 1 : 32 : 256
    I(:, i : i+31) = i - 1;
end
figure, 
imshow(I, []), title("Gray Shades");

%% Chessboard

I = zeros(256, 256);
a = 0;
for i = 1 : 8 : 256
    for j = 1 : 8 : 256
        I(i : i + 7, j : j + 7) = a;
        a = 1 - a;
    end
    a = 1 - a;
end
figure, 
imshow(I, []), title("Chessboard");
