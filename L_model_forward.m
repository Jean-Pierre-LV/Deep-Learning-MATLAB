function [AL,caches]=L_model_forward(X,parameters)

    caches = {};
    A = X';
    L = fix(length(fieldnames(parameters))/2);
    
    for l=1:L-1
        A_prev = A;
        [A, cache] = linear_activation_forward(A_prev,...
                                               parameters.('W'+string(l)), ...
                                               parameters.('b'+string(l)), ...
                                               'relu');%activation
    %caches.append(cache)
    caches=[caches cache];
    end
    
    [AL, cache]= linear_activation_forward(A,...
                                           parameters.('W'+string(L)), ...
                                           parameters.('b'+string(L)), ...
                                           'sigmoid');%activation
%     caches.append(cache)
    caches={caches cache};
%     assert(size(AL)==[1 size(X,2)])
end