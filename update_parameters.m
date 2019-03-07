function parameters=update_parameters(parameters, grads, learning_rate)

L = length(parameters);

    for l=1:L
        parameters.('W'+string(l+1)) = parameters.('W'+string(l)) - learning_rate*grads.('dW'+string(l));
        parameters.('b'+string(l+1)) = parameters.('b'+string(l)) - learning_rate*grads.('db'+string(l));

    end
end

