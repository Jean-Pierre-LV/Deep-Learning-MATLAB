function [dA_prev, dW, db]=linear_backward(dZ, cache)

    A_prev = cache{1,1};
    W = cache{1,2};
    b = cache{1,3};
    
    m = size(A_prev,2);
    
    dW = (1/m)*(dZ*(A_prev)');%change dZ to dZ'
    db = (1/m)*squeeze(sum(dZ,2));%change dZ to dZ'
    dA_prev = W'*dZ;%change dZ to dZ'
    
    assert1 = isequal(size(dA_prev),size(A_prev));
    assert2 = isequal(size(dW),size(W));
    assert3 = isa(db,'float');
    if assert1 == 0 || assert2 == 0 || assert3 == 0
        error('Error of dimensions on linear_backward')
    end
end
