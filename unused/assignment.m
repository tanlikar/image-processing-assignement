clc;
close all;
clear all;

%concentration of ammonia
Concentration = [0.25;0.25;0.5;0.5;1;1;2;2;4;4;8;8;0.25;0.25;0.5;0.5;1;1;2;2;4;4;8;8;0.25;0.25;0.5;0.5;1;1;2;2;4;4;8;8;0;0];

MR = [];
MG = [];
MB = [];
MH = [];
MS = [];
MV = [];

STDR = [];
STDG = [];
STDB = [];
STDH = [];
STDS = [];
STDV = [];


imDir = fullfile('c:\','Users','tanli', 'OneDrive','year 4 sem 1', 'image processing', 'assignment' , 'image');

imds = imageDatastore(imDir);
N = numpartitions(imds); %number of image in folder

for n=1:N
    I = readimage(imds, n);
    I = imresize(I,[300 200]);
    [BW,maskedRGBImage] = createMask(I);
    [BW,maskedRGBImage] = createMask2(maskedRGBImage);
    [BW,maskedRGBImage] = createMask3(maskedRGBImage);
   % figure, imshowpair(I,maskedRGBImage,'montage');
    J = imcrop(maskedRGBImage, [55.5 182.5 94 55]); %crop ROI
   % figure, imshow(J)


    %median filter
    % J_R = J(:,:,1);
    % J_G = J(:,:,2);
    % J_B = J(:,:,3);
    % J_R_F = medfilt2(J_R, [9 9]);
    % J_G_F = medfilt2(J_G, [9 9]);
    % J_B_F = medfilt2(J_B, [9 9]);
    % J = cat(3, J_R_F, J_G_F, J_B_F);
    % figure, imshow(J)
    
    % 51x51 average filter to get uniform image
    ave_filter=fspecial('average',[51 51]);
    J=imfilter(J,ave_filter,'replicate');
    %figure, imshow(J)
    
    %convert RGB to HSV
    K = rgb2hsv(J);
    K_H = K(:,:,1);
    K_S = K(:,:,2);
    K_V = K(:,:,3);
    
    J_R = J(:,:,1);
    J_G = J(:,:,2);
    J_B = J(:,:,3);
    
    % find the mean of each channel
    MR = [MR;mean2(J_R)];
    MG = [MG;mean2(J_G)];
    MB = [MB;mean2(J_B)];
    
    MH = [MH;mean2(K_H)];
    MS = [MS;mean2(K_S)];
    MV = [MV;mean2(K_V)];
    
    % find the standard deviation of each channel
    STDR=[STDR;std2(J_R)];
    STDG=[STDG;std2(J_G)];
    STDB=[STDB;std2(J_B)];
    
    STDH=[STDH;std2(K_H)];
    STDS=[STDS;std2(K_S)];
    STDV=[STDV;std2(K_V)];

end

T = table(MR,MG,MB,MH,MS,MV,STDR,STDG,STDB,STDH,STDS,STDV,Concentration);
filename = 'imageData.xlsx';
writetable(T,filename,'Sheet',1, 'WriteVariableNames',false);


