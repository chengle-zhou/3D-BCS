function [results, accuracy, prob,test_SL,GroudTest] = Classifier(img_gabor,GroundT,indexes,img_2d,train_num)

train_SL = GroundT(:,indexes);
test_SL = GroundT;
test_SL(:,indexes) = [];
train_samples = img_2d(train_SL(1,:),:);
train_labels = train_SL(2,:);
test_samples = img_2d(test_SL(1,:),:);
test_labels = test_SL(2,:)';
GroudTest = double(test_labels(:,1));

% Using SVM classifier to evaluation classification accuracy.
[results, accuracy, prob] = SVMclassifier_le(img_gabor,train_samples,train_labels');
