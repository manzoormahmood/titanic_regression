function [J, grad] = costFunction(theta, X, y)

m = length(y); % number of training examples

J = 0;
grad = zeros(size(theta));


htheta=1 ./ (1 + exp(-(X*theta)));
%using loop
for(k=1:1:m)
J=J+(  (-y(k)*log(htheta(k)))-((1-y(k))*log(1-htheta(k))));
end
J=J/m;

for i = 1:size(theta, 1)
    grad(i) = 1 / m * sum((htheta - y) .* X(:, i));
end





% =============================================================

end
