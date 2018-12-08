function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%


% recall: theta1 is 25 x 401
% x is m x 400

% add column of ones to the data matrix 
a1 = [ones(m, 1) X]; % a is m x 401

% transpose theta1 so it's m x 401 * 401 x 25
z2 = a1 * Theta1'; % z is m x 25

% useful value pt ii -> q is the no. rows 
q = size(z2, 1);

% add column of ones -> m x 26
a2 = [ones(q, 1) sigmoid(z2)]; % 

% m x 26 * 26 x num_labels -> m x num_labels
z3 = a2 * Theta2';

% 
h = sigmoid(z3);

[Y, I] = max(h, [], 2);
p = I;

% =========================================================================


end
