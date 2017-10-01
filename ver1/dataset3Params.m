function [C, sigma] = dataset3Params(X, y, Xval, yval)
% Return the optimal C and sigma learning parameters found using the cross validation set.

% Initial C and sigma value
C = 1;
sigma = 0.3;

% Loop through [0.01 0.03 0.1 0.3 1 3 10 30] to find optimal value 
results = zeros(64,3);
row = 0;
for C_test = [0.01 0.03 0.1 0.3 1 3 10 30]
	for sigma_test = [0.01 0.03 0.1 0.3 1 3 10 30]
		row += 1;
		model= svmTrain(X, y, C_test, @(x1, x2) gaussianKernel(x1, x2, sigma_test));
		predictions = svmPredict(model, Xval);
		error = mean(double(predictions ~= yval));
		results(row,:) = [C_test, sigma_test, error];
	end;
end;

sorted_results = sortrows(results, 3);
C = sorted_results(1,1);
sigma = sorted_results(1,2);

% =========================================================================

end
