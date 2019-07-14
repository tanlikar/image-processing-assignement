clc;
close all;
clear all;

%concentration of ammonia
%Concentration = [0.25;0.25;0.5;0.5;1;1;2;2;4;4;8;8;0.25;0.25;0.5;0.5;1;1;2;2;4;4;8;8;0.25;0.25;0.5;0.5;1;1;2;2;4;4;8;8;0;0];
ConcentrationDay1 = [0.25;0.5;1;2;4;8;0.25;0.5;1;2;4;8;0];

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

ER = [];
EG = [];
EB = [];
EH = [];
ES = [];
EV = [];

imDir = fullfile('c:\','Users','tanli', 'OneDrive','year 4 sem 1', 'image processing', 'assignment' , 'image', 'day1');

imds = imageDatastore(imDir);
N = numpartitions(imds); %number of image in folder

for n=1:N
    I = readimage(imds, n);
    I = imresize(I,[300 200]);
    [BW,maskedRGBImage] = createMask(I);
    [BW,maskedRGBImage] = createMask2(maskedRGBImage);
    [BW,maskedRGBImage] = createMask3(maskedRGBImage);
    %figure, imshowpair(I,maskedRGBImage,'montage');
    J = imcrop(maskedRGBImage, [55.5 182.5 94 55]); %crop ROI
    %figure, imshow(J)


    %median filter
%      J_R = J(:,:,1);
%      J_G = J(:,:,2);
%      J_B = J(:,:,3);
%      J_R_F = medfilt2(J_R, [21 21]);
%      J_G_F = medfilt2(J_G, [21 21]);
%      J_B_F = medfilt2(J_B, [21 21]);
%      J = cat(3, J_R_F, J_G_F, J_B_F);
%      figure, imshow(J)
    
    % 51x51 average filter to get uniform image
    ave_filter=fspecial('average',[51 51]);
    J=imfilter(J,ave_filter,'replicate');
    %figure, imshow(J)
    
    %convert RGB to HSV
    K = rgb2hsv(J);
    H = K(:,:,1);
    S = K(:,:,2);
    V = K(:,:,3);
    
    R = J(:,:,1);
    G = J(:,:,2);
    B = J(:,:,3);
    
    % find the mean of each channel
    MR = [MR;mean2(R)];
    MG = [MG;mean2(G)];
    MB = [MB;mean2(B)];
    
    MH = [MH;mean2(H)];
    MS = [MS;mean2(S)];
    MV = [MV;mean2(V)];
    
    % find the standard deviation of each channel
    STDR=[STDR;std2(R)];
    STDG=[STDG;std2(G)];
    STDB=[STDB;std2(B)];
    
    STDH=[STDH;std2(H)];
    STDS=[STDS;std2(S)];
    STDV=[STDV;std2(V)];
    
    %calculate entropy
    ER=[ER;entropy(R)];
    EG=[EG;entropy(G)];
    EB=[EB;entropy(B)];
    EH=[EH;entropy(H)];
    ES=[ES;entropy(S)];
    EV=[EV;entropy(V)];  

end

T = table(MR,MG,MB,MH,MS,MV,STDR,STDG,STDB,STDH,STDS,STDV,ER,EG,EB,EH,ES,EV,ConcentrationDay1);
filename = 'imageDataDay1.xlsx';
writetable(T,filename,'Sheet',1, 'WriteVariableNames',true);
