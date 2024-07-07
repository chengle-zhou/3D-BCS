clear all; close all; clc
addpath Gabor_Filter
addpath K_means_feature
addpath SuperpixelSge
addpath Prob_SVM

load IndiaP
load Indian_pines_gt

% HSI data preprocessing
Groundtruth = indian_pines_gt;
no_class = max(Groundtruth(:));
% record the indexs of background pixels
[bagrX, bagrY] = find(double(Groundtruth) == 0);
[rows, cols, band_ori] = size(img);
img_2d = reshape(img, rows*cols, band_ori);
number_superpixels = 200;
SuperLabels = OverSgementation(img, number_superpixels, 'ers');

rate_k = 0.7;

% (1) Superpixel Gabor filter
PCs = 3;
para.u = 5; para.v = 8; para.m = 55; para.n = 55; 
[img_gabor] = GaborFilter(img, para, PCs, SuperLabels);
img_gabor_2d = reshape(img_gabor, rows*cols, size(img_gabor,3));

% (2) K-means filter operation
rate_k = 0.8;
% Generate mean feature map
[mean_matix,super_img,~] = K_mean_feature(img,SuperLabels,rate_k);
img_mean_2d = reshape(mean_matix, rows*cols, size(mean_matix,3));

% (3) Weighting filter operation
half_peak = 0.7;
weighted_matix = weighted_feature(img,super_img,SuperLabels,half_peak);
img_weight_2d = reshape(weighted_matix, rows*cols, size(weighted_matix,3));


% set the number of training sample
% train_num =  [4,15,9,4,7,7,2,5,3,10,23,6,3,12,5,4]; % abuout 1% the paper use
train_num =  [4,15,9,4,7,7,9,5,3,10,16,6,3,12,5,4]; % abuout 1% the paper use
fea_name_3d = {'img_gabor','mean_matix','weighted_matix'};
fea_name_2d = {'img_gabor_2d','img_mean_2d','img_weight_2d'};
all_results = [];
indexes = train_random_select(GroundT(2,:),train_num); % based on 24 for each class
for im = 1:1
    fea_3d = eval(fea_name_3d{im});
    fea_2d = eval(fea_name_2d{im});
    [results, ~, ~,test_SL,GroudTest] = Classifier(fea_3d,GroundT,indexes,fea_2d,train_num);
    ResultTest = results(test_SL(1,:));
    [OA,AA,kappa,CA] = confusion(GroudTest,ResultTest)
    all_results(:,im) = results;    
end

% decision fusion
fusion_result = FusionTwo(all_results);
% Evaluation the performance of the SVM
ResultTest = fusion_result(test_SL(1,:));
[OA,AA,kappa,CA] = confusion(GroudTest,ResultTest)





