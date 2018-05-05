function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

h = sigmoid(theta'*X); % h(x) = g(theta-transpose * x)

J = (1/m)*(-y*log(h)-(1-y)*log(1-h)) % check that the dimensions work out
grad = (1/m)*X'*(h-y); % X' stands in for x at j -- take the transpose; 
% don't use sigma/sum b/c the OG math func in slides will also produce a series of values - which we put in a vector here !!! and the matrix multiplication effectively gives us the sum anyway : ) 



% =============================================================

end