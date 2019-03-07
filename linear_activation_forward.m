function [A,cache]=linear_activation_forward(A_prev,W,b,activation)

if activation == "sigmoid"
    [Z,linear_cache]=linear_forward(A_prev,W,b);
    [A, activation_cache]=sigmoid(Z);
elseif activation == "relu"
    [Z,linear_cache]=linear_forward(A_prev,W,b);
    [A, activation_cache]=relu(Z);
end

% assert(size(A)==[size(W,1) size(A_prev,2)])
cache={linear_cache activation_cache};