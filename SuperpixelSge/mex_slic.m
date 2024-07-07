function [labels, numlabels] = mex_slic(img1,number_superpixels,lambda_prime)
%% Genrate superpixels segmentation map
[labels, numlabels] = slic_mex(img1,number_superpixels,lambda_prime);
