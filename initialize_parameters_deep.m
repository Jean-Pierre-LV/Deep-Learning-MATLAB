function parameters=initialize_parameters_deep(layer_dims)

% rng(0);
parameters={};
L= length(layer_dims);

for l=2:L
    parameters.('W'+string(l-1))= randn(layer_dims(l),layer_dims(l-1))*0.01;
    parameters.('b'+string(l-1))= zeros(layer_dims(l),1);

    assert1 = isequal(size(parameters.('W'+string(l-1))),[layer_dims(l) layer_dims(l-1)]);
    assert2 = isequal(size(parameters.('b'+string(l-1))),[layer_dims(l) 1]);
    if assert1 == 0 || assert2 == 0
        error('Error of dimensions on Initial_parameters')
    end
end
end

