function parameters=update_parameters(parameters, grads, learning_rate)

L = floor(length(fieldnames(parameters))/2);

    for l=1:L
        parameters.('W'+string(l)) = parameters.('W'+string(l)) - learning_rate*grads.('dW'+string(l));
        parameters.('b'+string(l)) = parameters.('b'+string(l)) - learning_rate*grads.('db'+string(l));

    end
end

