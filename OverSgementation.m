function SuperLabels = OverSgementation(img, number_superpixels, way)

[rows, cols, bands] = size(img);
img = reshape(img, rows*cols, bands);
img_pca = compute_mapping(img,'PCA',3);     %
[img_pca] = scale_new(img_pca);
superpixel_data = reshape(img_pca,[rows, cols, 3]);
superpixel_data=mat2gray(superpixel_data);
superpixel_data=im2uint8(superpixel_data);
switch way
    case 'ers'
        % number_superpixels = 300;
        lambda_prime = 0.8;  sigma = 10;  conn8 = 1;
        SuperLabels = mex_ers(double(superpixel_data),number_superpixels,lambda_prime,sigma,conn8);
    case 'slic'
        lambda_prime = 0.8;
        [SuperLabels, numlabels] = slic_mex(superpixel_data,number_superpixels,lambda_prime);
end

% superpixelmap = drawregionboundaries(SuperLabels, superpixel_data, [255 255 255]);
% figure()
% imshow(superpixelmap);