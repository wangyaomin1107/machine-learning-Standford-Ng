function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% Cost function J
h=X * theta;
J=1./(2*m)*sum((h-y).^2)+lambda./(2*m)*(sum((theta.^2))-(theta(1).^2));

% gradient
X_tr=transpose(X);
grad_0 =1./m * X_tr(1,:) * (h-y);
grad_1 = (1./m * (X_tr(2:size(theta),:) * (h-y))) + (lambda./m) * theta(2:size(theta));
grad=[grad_0 ; grad_1];










% =========================================================================

grad = grad(:);

end
