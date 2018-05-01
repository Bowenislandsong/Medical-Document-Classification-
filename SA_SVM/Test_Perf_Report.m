%% %% SVM Classifier for Text Document
% MATLAB R2017b
% Bowen Song U04079758

%% News 20 group
% preprocessing
% tic
Preprocessing_new20;
disp("Preprocessing is done:")
% toc
% boxcon_power = -7:13;
% boxcon = 2.^boxcon_power;
% filename = "USnews_linear_OVA";
% function_linear_OVA(X_train_woSTOP,X_test_woSTOP,Y_train,Y_test,vocab,boxcon,filename)

%% Clinc result
% preprocessing
clear all
tic
load('../Cancer_Detection_Data/Train_Data_Cancer.mat');
load('../Cancer_Detection_Data/Train_Label_Cancer.mat');
load('../Cancer_Detection_Data/Test_Data_Cancer.mat');
load('../Cancer_Detection_Data/Test_Label_Cancer');
vocab = textread('../Cancer_Detection_Data/vocabulary.txt','%s');
toc
boxcon_power = -7:13;
boxcon = 2.^boxcon_power;
filename = "Clinc_linear_OVA";
function_linear_OVA(train_data_cancer,test_data_cancer,Train_Label_Cancer,Test_Label_Cancer,vocab,boxcon,filename)









% 10 parameters
% without parfor
% with most inner parfor
% with outter parfor
% %% Training woth OVA
% tic
% svm_group_ova = training_SA_SVM(X_train_woSTOP,Y_train,Y_train_expand,length(vocab),tuning,'ova');
% disp("Training for OVA is done:")
% toc
% %% prepare for test
% [~,~,docIDreorder_test] = unique(X_test(:,1));
% X_test = sparse(docIDreorder_test,X_test(:,2),...
%     X_test(:,3),length(Y_test),length(vocab));
% %% Evaluation
% tic
% 
% prediction_ovo = zeros(length(Y_test),length(svm_group_ovo));
% parfor i = 1:length(svm_group_ovo)
%     prediction_ovo(:,i) = svmclassify(svm_group_ovo(i),X_test);
% end
% 
% prediction_ovo = mode(prediction_ovo,2);
% ccr_ovo = mean(prediction_ovo==Y_test);
% 
% toc
% display(ccr_ovo)
% PreXtruth = confusionmat(prediction_ovo,Y_test);
% display(PreXtruth);
% disp("Evaluation for OVO is done:")
% toc
% 
% tic
% prediction_ova = zeros(length(Y_test),length(svm_group_ova));
% parfor i = 1:length(svm_group_ova)
%     prediction_ova(:,i) = svmclassify(svm_group_ova(i),X_test);
% end
% 
% prediction_ova = mode(prediction_ova,2);
% ccr_ova = mean(prediction_ova==Y_test);
% 
% toc
% display(ccr_ova)
% PreXtruth = confusionmat(prediction_ova,Y_test);
% display(PreXtruth);
% disp("Evaluation for OVA is done:")
% toc
% %% Report CCR
% 
% % Confustion matrix based on best CCR
% 
% %% Report F-score and recall
% 
% % Confustion matrix based on best F-score and recall
