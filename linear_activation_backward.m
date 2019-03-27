function [dA_prev, dW, db]=linear_activation_backward(dA, cache, activation)

    linear_cache= cache{1,1}{1,1};
    activation_cache=cache{1,1}{1,2};
    
    if activation == "relu"
        dZ = relu_backward(dA, activation_cache);
        
    elseif activation == "sigmoid"
        dZ = sigmoid_backward(dA, activation_cache);
        
    end
    [dA_prev, dW, db] = linear_backward(dZ, linear_cache);
end