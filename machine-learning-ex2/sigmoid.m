function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

g = 1./(1+exp(-z)); % ./ will divide each element of the vector element-wise
% 1 ./ => so given vector 1+exp(-z), for each element, we divide 1 by the elements of that vector, creating a new vector



% =============================================================

end
