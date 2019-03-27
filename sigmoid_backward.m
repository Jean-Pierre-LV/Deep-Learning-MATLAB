function dZ=sigmoid_backward(dA, activation_cache)

    Z=activation_cache;
    dZ=dA.*sigmoid(Z).*(1-sigmoid(Z));
end