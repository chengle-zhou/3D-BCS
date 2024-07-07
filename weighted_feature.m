function weighted_matix = weighted_feature(img_ave,super_img,SuperLabels,half_peak)
% Construct weighted feature based on mean feature within each superpixel
% block for HSI.
% Input:
%      img_ave: rows * cols * bands image cube
%      super_img: mean feature of each superpixel block
%      block_index: index of each pixel for each superpixel block
% Output:
%      weighted_matrix: Guassian weight-based weighted feature
% Author: Chengle zhou, chengle_zhou@foxmail.com

[r,c,b] = size(img_ave);
img_ave_2d = reshape(img_ave, r*c, b);
SuperLabels_1D = reshape(SuperLabels,r*c,1);
weighted_matix = zeros(r*c,b);
for i = 1 : size(super_img,2)
    block_index = find(SuperLabels_1D == i-1);
    super_mean_feature = super_img(:,i);
    spec_infor = img_ave_2d(block_index,:);
    %像素块内光谱与均值光谱计算高斯距离
    dist = pdist_le(spec_infor,super_mean_feature','SAM');
    % parameter setting about gaussian weight
    height = 1; offset = 0; %half_peak = 1;
    coefficient = (dist - offset).^2 / (2 * half_peak.^2);
    weight = height * exp(-coefficient);
    temp_weight = repmat(weight,[1,size(spec_infor,2)]); %
    weighted_fea = mean(temp_weight.*spec_infor,1);
    muti_weited_fea = repmat(weighted_fea,size(block_index));
    weighted_matix(block_index,:) = muti_weited_fea;
end
weighted_matix = reshape(weighted_matix, r, c, b);