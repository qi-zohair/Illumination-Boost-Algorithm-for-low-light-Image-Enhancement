%% Title: Illumination Boost Algorithm for Nighttime Image Enhancement

%% Created by Zohair Al-Ameen.
% Department of Computer Science, 
% College of Computer Science and Mathematics,
% University of Mosul, 
% Mosul, Nineveh, Iraq

%% Please report bugs and/or send comments to Zohair Al-Ameen.
% Email: qizohair@uomosul.edu.iq

%% When you use this code or any part of it, please cite the following article:  
% Zohair Al-Ameen. 
% "Nighttime Image Enhancement Using a New Illumination Boost Algorithm." 
% IET Image Processing, vol. 13, no. 8, (2019): pp. 1314-1320. DOI: 10.1049/iet-ipr.2018.6585
%% INPUTS
% x --> is a given low-illumination image
% Lambda -- > controls the amount of enhancement

%% OUTPUT
% out --> illumination-enhanced image


%% Starting implementation %%
clear all; clc; close all;
%% Input the image
x = im2double(imread('1.jpg'));
%% Run IBA
Lambda = 4;
tic; out = IBA(x, Lambda); toc;
%% Display the results
figure; imshow(x); title('Orignal')
figure; imshow(out); title('IBA-Enhanced')
%% Write the output as an image
% imwrite(out,'IBA_L4.jpg')