function grads=L_model_backward(AL, Y, caches)

    grads={};
    L = length(caches);
    m = size(AL,2);
    Y = reshape(Y,size(AL));
    
    
    dAL = -((Y./AL)-((1-Y)./(1-AL)));
    
    current_cache = caches(end);
    [grads.('dA'+string(L)), grads.('dW'+string(L)), grads.('db'+string(L))]=linear_activation_backward(dAL,current_cache,'sigmoid');
    
    for l=L-1:-1:1
        current_cache=caches(l);
        [dA_prev_temp, dW_temp, db_temp] = linear_activation_backward(grads.('dA'+string(l+1)),current_cache,'relu');
        grads.('dA'+string(l)) = dA_prev_temp;
        grads.('dW'+string(l)) = dW_temp;
        grads.('db'+string(l)) = db_temp;
        
    end
end
        
    
    
    
    