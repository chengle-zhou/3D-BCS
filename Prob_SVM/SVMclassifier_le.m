function [svm_results, accuracy, prob] = SVMclassifier_le(img,train_samples,train_labels)
% Input: 
%       img:  rows x clos x bands
%       train_samples:  n x bands
%       train_labels:  n x 1
% Output: 
%       svm_results:  (rows x clos) x 1
%       accuracy:      n x bands
%       prob:         (rows x clos) x c

[r, c, b] = size(img);
img = reshape(img,r*c,b);
% Normalize the training set and original image
[train_samples,M,m] = scale_func(train_samples);
[img] = scale_func(img,M,m);

% Select the paramter for SVM with five-fold cross validation
[Ccv Gcv cv cv_t] = cross_validation_svm(train_labels,train_samples);

% Training using a Gaussian RBF kernel
%give the parameters of the SVM (Thanks Pedram for providing the
% parameters of the SVM)
parameter=sprintf('-s 0 -t 2 -c %f -g %f -m 500 -b 1',Ccv,Gcv); 

%%% Train the SVM
model=svmtrain(train_labels,train_samples,parameter);

[svm_results, accuracy, prob] = svmpredict(ones(r*c,1),img,model,'-b 1');  