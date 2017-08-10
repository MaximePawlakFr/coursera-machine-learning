function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%


%indices = [0.01 , 0.03, 0.1, 0.3, 1, 3, 10, 30]
%C = 0.001;
%C_base = C;
%
%sigma = 0.003;
%sigma_base = sigma;
%  
%errors = zeros(3);
%for i = [1:length(indices)]
%  C = indices(i);#C_base *10^i;
%
%  
%  for j = [1 : length(indices)]# [1 : 4]
%    sigma = indices(j);#sigma_base *10^j;
%    fprintf("==> %f - %f -- %f - %f\n", i, j, C, sigma);
%    
%    model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
%    predictions = svmPredict(model, Xval);
%    error = mean(double(predictions ~= yval));
%    errors(i,j) = error;
%  end
%  
%end
%[x1, ind1] = min(errors, [], 1);
%[x2, ind2] = min(x1, [], 2);
%
%ind_C = ind1(ind2);
%ind_sigma = ind2;
%
%# C = errors(ind_C(1), ind_sigma(1))
%#C = C_base * 10^ind_C
%#sigma = sigma_base * 10^ind_sigma
%C = indices(ind_C)
%sigma = indices(ind_sigma)
%#C = errors;

# Response 
C = 1;
sigma = 0.1;

% =========================================================================

end
