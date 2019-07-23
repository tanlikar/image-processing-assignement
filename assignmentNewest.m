clc;
close all;
clear all;

%concentration of ammonia
% Concentration = [0.25;0.25;0.5;0.5;1;1;2;2;4;4;8;8;0.25;0.25;0.5;0.5;1;1;2;2;4;4;8;8;0.25;0.25;0.5;0.5;1;1;2;2;4;4;8;8;0;0];

Concentration = [0.25;0.25;0.25;0.5;0.5;0.5;1;1;1;2;2;2;4;4;4;8;8;8;0;0.25;0.25;0.25;0.5;0.5;0.5;1;1;1;2;2;2;4;4;4;8;8;8;0];
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

folder = ["day1", "day2"];
[a, b] = size(folder);

for F=1:b
    imDir = fullfile('c:\','Users','tanli', 'OneDrive','year 4 sem 1', 'image processing', 'assignment' , folder(F));
    
    saveDir = fullfile('c:\','Users','tanli', 'OneDrive','year 4 sem 1', 'image processing', 'assignment' , 'processed' , folder(F));
    mkdir(saveDir);
    
    imds = imageDatastore(imDir);
    N = numpartitions(imds); %number of image in folder
    
    for n=1:N
        I = readimage(imds, n);
        
        if F==1
            if n == N  %for control
                B = imcrop(I, [1700 1370 150 500]); %crop ROI
                Q = B;
                %figure, imshow(B)
                imwrite(B, saveDir + "\" + Concentration(19*F)+"_Crop.png");
                
            else
                A = imcrop(I, [750 1370 150 500]); %crop ROI
                B = imcrop(I, [1700 1370 150 500]); %crop ROI
                C = imcrop(I, [2750 1370 150 500]); %crop ROI
%                 
                %figure, imshow(A)
                %figure, imshow(B)
                %figure, imshow(C)
                
                %save image
                imwrite(A, saveDir + "\" + Concentration(1+(3*(n-1))) + "_" + 1+"_Crop.png");
                imwrite(B, saveDir + "\" + Concentration(2+(3*(n-1))) + "_" + 2+"_Crop.png");
                imwrite(C, saveDir + "\" + Concentration(3+(3*(n-1))) + "_" + 3+"_Crop.png");
                
                Q = cat(3, A, B, C);
            end
        else
            if n == N  %for control
                B = imcrop(I, [1700 1370 150 500]); %crop ROI
                Q = B;
%                 figure, imshow(B)
                imwrite(B, saveDir + "\" + Concentration(19*(F))+"_Crop.png");
                
            else
                A = imcrop(I, [520 1370 150 500]); %crop ROI
                B = imcrop(I, [1700 1370 150 500]); %crop ROI
                C = imcrop(I, [2850 1370 150 500]); %crop ROI
                
                %figure, imshow(A)
                %figure, imshow(B)
                %figure, imshow(C)
                imwrite(A, saveDir + "\" + Concentration(1+(3*(n-1))+19) + "_" + 1+"_Crop.png");
                imwrite(B, saveDir + "\" + Concentration(2+(3*(n-1))+19) + "_" + 2+"_Crop.png");
                imwrite(C, saveDir + "\" + Concentration(3+(3*(n-1))+19) + "_" + 3+"_Crop.png");
                
                Q = cat(3, A, B, C);
            end
        end
        
        %median filter remove logo
        for x=0:2
            
            if n == N
                J_R = Q(:,:,1);
                J_G = Q(:,:,2);
                J_B = Q(:,:,3);
            else
                J_R = Q(:,:,1+(3*x));
                J_G = Q(:,:,2+(3*x));
                J_B = Q(:,:,3+(3*x));
            end
            
            
            J_R_F = medfilt2(J_R, [200 200], 'symmetric');
            J_G_F = medfilt2(J_G, [200 200], 'symmetric');
            J_B_F = medfilt2(J_B, [200 200], 'symmetric');
            J = cat(3, J_R_F, J_G_F, J_B_F);
            
            if(n == N)
                imwrite(J, saveDir + "\" + Concentration(19*F) + "_"+"_Median.png");
            else
                imwrite(J, saveDir + "\" + Concentration(1+x+(3*(n-1))+(19*(F-1))) + "_" + (x+1)+"_Median.png");
            end
            
            %figure, imshow(J)
            
            % 51x51 average filter to get uniform image
            ave_filter=fspecial('average',[51 51]);
            J=imfilter(J,ave_filter,'replicate');
            
            if(n == N)
                imwrite(J, saveDir + "\" + Concentration(19*F)+"_Average.png");
            else
                imwrite(J, saveDir + "\" + Concentration(1+x+(3*(n-1))+(19*(F-1))) + "_" + (x+1)+"_Average.png");
            end
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
%             STDR=[STDR;std2(J_R)];
%             STDG=[STDG;std2(J_G)];
%             STDB=[STDB;std2(J_B)];            
%             STDH=[STDH;std2(K_H)];
%             STDS=[STDS;std2(K_S)];
%             STDV=[STDV;std2(K_V)];
            
            %calculate entropy
            ER=[ER;entropy(J_R)];
            EG=[EG;entropy(J_G)];
            EB=[EB;entropy(J_B)];
            EH=[EH;entropy(K_H)];
            ES=[ES;entropy(K_S)];
            EV=[EV;entropy(K_V)];
            
            if n == N
                break
            end
        end
    end
end

%STDR,STDG,STDB,STDH,STDS,STDV,
T = table(MR,MG,MB,MH,MS,MV,ER,EG,EB,EH,ES,EV,Concentration);
filename = 'imageDatanewTEST.xlsx';
writetable(T,filename,'Sheet',1, 'WriteVariableNames',true);


